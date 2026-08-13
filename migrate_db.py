#!/usr/bin/env python3
"""
Nyx Database Migration Script
Drops and recreates PostgreSQL database, then imports data from MySQL dump.
Uses autocommit mode so each statement is committed immediately.
"""

import os
import sys
import re
import psycopg2
from psycopg2.extensions import ISOLATION_LEVEL_AUTOCOMMIT
import logging

logging.basicConfig(
    level=logging.INFO,
    format='%(asctime)s [%(levelname)s] %(message)s',
    datefmt='%H:%M:%S'
)
logger = logging.getLogger(__name__)

DB_CONFIG = {
    'host': 'localhost',
    'port': 5432,
    'user': 'postgres',
    'password': '12345678',
}

BASE_DIR = os.path.dirname(os.path.abspath(__file__))
MIGRATION_SQL = os.path.join(BASE_DIR, 'src', 'Nyx', 'Database', 'PostgreSQL', 'migration_generated.sql')
MYSQL_DUMP = os.path.join(BASE_DIR, 'SQL', 'db_6370.sql')
DATABASE = 'nyx'


def get_admin_conn():
    """Get connection to postgres database for admin tasks."""
    return psycopg2.connect(**DB_CONFIG, database='postgres')


def get_nyx_conn(autocommit=False):
    """Get connection to nyx database."""
    conn = psycopg2.connect(**DB_CONFIG, database=DATABASE)
    if autocommit:
        conn.set_isolation_level(ISOLATION_LEVEL_AUTOCOMMIT)
    return conn


def drop_database():
    logger.info("Dropping database '%s'...", DATABASE)
    conn = get_admin_conn()
    conn.set_isolation_level(ISOLATION_LEVEL_AUTOCOMMIT)
    cur = conn.cursor()
    cur.execute("""
        SELECT pg_terminate_backend(pg_stat_activity.pid)
        FROM pg_stat_activity
        WHERE pg_stat_activity.datname = %s AND pid <> pg_backend_pid()
    """, (DATABASE,))
    cur.execute("DROP DATABASE IF EXISTS %s" % DATABASE)
    cur.close()
    conn.close()
    logger.info("Database dropped.")


def create_database():
    logger.info("Creating database '%s'...", DATABASE)
    conn = get_admin_conn()
    conn.set_isolation_level(ISOLATION_LEVEL_AUTOCOMMIT)
    cur = conn.cursor()
    cur.execute("CREATE DATABASE %s WITH ENCODING='UTF8'" % DATABASE)
    cur.close()
    conn.close()
    logger.info("Database created.")


def split_sql_statements(sql_content):
    """Parse SQL file into individual statements, handling multi-line CREATE TABLE."""
    statements = []
    current = []
    paren_depth = 0
    in_string = False
    string_char = None
    prev_char = None

    for char in sql_content:
        if char in ("'", '"') and not in_string:
            in_string = True
            string_char = char
            current.append(char)
            prev_char = char
            continue

        if in_string:
            current.append(char)
            if char == string_char and prev_char != '\\':
                in_string = False
                string_char = None
            prev_char = char
            continue

        if char == '(':
            paren_depth += 1
            current.append(char)
            prev_char = char
            continue

        if char == ')':
            paren_depth -= 1
            current.append(char)
            prev_char = char
            continue

        if char == ';' and paren_depth == 0:
            stmt = ''.join(current).strip()
            if stmt:
                statements.append(stmt)
            current = []
            prev_char = char
            continue

        current.append(char)
        prev_char = char

    if current:
        stmt = ''.join(current).strip()
        if stmt:
            statements.append(stmt)

    return statements


def run_migration():
    """Run migration SQL with autocommit so each statement is independent."""
    logger.info("Running migration from: %s", MIGRATION_SQL)

    with open(MIGRATION_SQL, 'r', encoding='utf-8') as f:
        content = f.read()

    statements = split_sql_statements(content)
    logger.info("Found %d SQL statements", len(statements))

    conn = get_nyx_conn(autocommit=True)
    cur = conn.cursor()

    executed = 0
    errors = 0

    for i, stmt in enumerate(statements):
        try:
            cur.execute(stmt)
            executed += 1
        except Exception as e:
            errors += 1
            error_msg = str(e).split('\n')[0][:120]
            logger.warning("  Statement %d FAILED: %s", i + 1, error_msg)

    cur.close()
    conn.close()
    logger.info("Migration: %d executed, %d errors", executed, errors)
    return errors


def parse_mysql_dump():
    """Parse MySQL dump file and extract INSERT statements by table."""
    logger.info("Parsing MySQL dump: %s", MYSQL_DUMP)

    with open(MYSQL_DUMP, 'r', encoding='utf-8') as f:
        content = f.read()

    tables = {}
    pattern = r"INSERT INTO `(\w+)`\s*(?:\(([^)]*)\)\s*)?VALUES\s*(.*?);"

    for match in re.finditer(pattern, content, re.DOTALL | re.IGNORECASE):
        table_name = match.group(1)
        columns_str = match.group(2)
        values_part = match.group(3).strip()

        if table_name not in tables:
            tables[table_name] = {'columns': None, 'values': []}

        if columns_str:
            cols = [c.strip().strip('`') for c in columns_str.split(',')]
            tables[table_name]['columns'] = cols

        tables[table_name]['values'].append(values_part)

    logger.info("Found %d tables with data", len(tables))
    return tables


def parse_values_row(values_str):
    """Parse a single row of VALUES into a list of raw value strings."""
    values = []
    current = []
    in_string = False
    escape_next = False

    for char in values_str:
        if escape_next:
            current.append(char)
            escape_next = False
            continue
        if char == '\\':
            escape_next = True
            current.append(char)
            continue
        if char == "'":
            in_string = not in_string
            current.append(char)
            continue
        if char == ',' and not in_string:
            values.append(''.join(current).strip())
            current = []
            continue
        current.append(char)

    if current:
        values.append(''.join(current).strip())

    return values


def convert_mysql_value(value):
    """Convert a MySQL raw value to a Python value for PostgreSQL."""
    value = value.strip()
    if value.upper() == 'NULL':
        return None
    if value.startswith("'") and value.endswith("'"):
        inner = value[1:-1]
        inner = inner.replace("\\'", "'")
        inner = inner.replace("\\\\", "\\")
        return inner
    try:
        if '.' in value:
            return float(value)
        return int(value)
    except ValueError:
        return value


def import_table_data(conn, table_name, table_info):
    """Import data for one table. Uses autocommit connection."""
    values_list = table_info['values']
    mysql_columns = table_info['columns']

    if not values_list:
        return 0

    cur = conn.cursor()

    # Get PG column names
    try:
        cur.execute("""
            SELECT column_name FROM information_schema.columns
            WHERE table_name = %s ORDER BY ordinal_position
        """, (table_name,))
        pg_columns = [row[0] for row in cur.fetchall()]
    except:
        cur.close()
        return 0

    if not pg_columns:
        cur.close()
        return 0

    # Build column index mapping
    if mysql_columns:
        pg_col_map = {c.lower(): c for c in pg_columns}
        col_indices = []
        for mc in mysql_columns:
            pg = pg_col_map.get(mc.lower())
            if pg:
                col_indices.append((mysql_columns.index(mc), pg))
        if not col_indices:
            col_indices = [(i, pg_columns[i]) for i in range(min(len(mysql_columns), len(pg_columns)))]
    else:
        col_indices = [(i, pg_columns[i]) for i in range(len(pg_columns))]

    imported = 0
    errors = 0

    for values_str in values_list:
        try:
            vs = values_str.strip()
            if vs.startswith('('):
                vs = vs[1:]
            if vs.endswith(')'):
                vs = vs[:-1]

            raw_values = parse_values_row(vs)

            mapped_cols = []
            mapped_vals = []
            for idx, pg_col in col_indices:
                if idx < len(raw_values):
                    mapped_cols.append(pg_col)
                    mapped_vals.append(convert_mysql_value(raw_values[idx]))

            if not mapped_cols:
                continue

            placeholders = ', '.join(['%s'] * len(mapped_cols))
            quoted_cols = ', '.join(['"%s"' % c for c in mapped_cols])
            sql = 'INSERT INTO "%s" (%s) VALUES (%s) ON CONFLICT DO NOTHING' % (table_name, quoted_cols, placeholders)

            cur.execute(sql, mapped_vals)
            imported += 1
        except Exception as e:
            errors += 1
            conn.rollback() if not conn.autocommit else None

    conn.commit()
    cur.close()

    if imported > 0:
        logger.info("  %s: %d rows imported (%d errors)", table_name, imported, errors)
    return imported


def import_data():
    """Import all data from MySQL dump."""
    logger.info("Importing data from MySQL dump...")

    tables_data = parse_mysql_dump()
    conn = get_nyx_conn(autocommit=True)
    total = 0

    # Priority order for tables with foreign key dependencies
    priority = [
        'accounts', 'configuration', 'entities', 'items', 'skills', 'profs',
        'guilds', 'arena', 'maps', 'monsterinfos', 'npcs', 'sobnpcs',
        'furniture', 'bannedips', 'friends', 'enemy', 'partners', 'apprentice',
        'achievement', 'activeness', 'adv', 'chi', 'chiretreat', 'claimitems',
        'clanrelation', 'clans', 'dailyquest', 'dailyquests', 'detaineditems',
        'elitepk', 'flooritem', 'guildally', 'guildarsenal', 'guildenemy',
        'guild_arsenals', 'guild_arsenalsdonation', 'house', 'inner',
        'inner_power', 'itemadding', 'jiang', 'jiang_hu', 'josephvariable',
        'kingdommission', 'lottery', 'monsterspawns', 'nobility', 'pk_explorer',
        'prizes', 'quests', 'rates', 'refinery', 'refineryboxes',
        'reincarnation', 'servergift', 'skillteampk', 'spells', 'status',
        'subclasses', 'teamarena', 'teampk', 'titles', 'unions',
        'variablevault', 'way2heroes'
    ]

    for table in priority:
        if table in tables_data:
            total += import_table_data(conn, table, tables_data[table])

    for table, info in tables_data.items():
        if table not in priority:
            total += import_table_data(conn, table, info)

    conn.close()
    logger.info("Total rows imported: %d", total)


def verify():
    """Verify tables exist and have data."""
    logger.info("Verifying migration...")
    conn = get_nyx_conn()
    cur = conn.cursor()

    tables_to_check = [
        'entities', 'accounts', 'items', 'skills', 'profs', 'maps',
        'monsterinfos', 'npcs', 'sobnpcs', 'furniture', 'configuration',
        'friends', 'enemy', 'guilds', 'arena'
    ]

    for table in tables_to_check:
        try:
            cur.execute('SELECT COUNT(*) FROM "%s"' % table)
            count = cur.fetchone()[0]
            logger.info("  %-20s %d rows", table, count)
        except Exception as e:
            logger.warning("  %-20s ERROR: %s", table, str(e)[:60])
            conn.rollback()

    cur.close()
    conn.close()


def main():
    logger.info("=" * 60)
    logger.info("Nyx Database Migration Script")
    logger.info("=" * 60)

    try:
        drop_database()
    except Exception as e:
        logger.warning("Drop failed: %s", e)

    try:
        create_database()
    except Exception as e:
        logger.error("Create failed: %s", e)
        sys.exit(1)

    try:
        run_migration()
    except Exception as e:
        logger.error("Migration failed: %s", e)
        sys.exit(1)

    try:
        import_data()
    except Exception as e:
        logger.error("Import failed: %s", e)
        sys.exit(1)

    try:
        verify()
    except Exception as e:
        logger.warning("Verify failed: %s", e)

    logger.info("=" * 60)
    logger.info("Done!")
    logger.info("=" * 60)


if __name__ == '__main__':
    main()
