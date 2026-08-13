#!/usr/bin/env python3
"""
Nyx Database Migration Tool
MySQL to PostgreSQL Data Transfer

This script collects all data from MySQL and imports it into PostgreSQL.
Supports batch processing, progress tracking, and error handling.

Usage:
    python migrate.py --mysql-host localhost --mysql-port 3306 --mysql-db Nyx --mysql-user root --mysql-pass 12345678
                     --pg-host localhost --pg-port 5432 --pg-db nyx --pg-user postgres --pg-pass 12345678
                     [--batch-size 1000] [--tables TABLE1,TABLE2] [--skip-schema] [--dry-run]
"""

import argparse
import sys
import time
import logging
from datetime import datetime
from typing import Optional, Dict, List, Any, Tuple
from contextlib import contextmanager

try:
    import pymysql
    import pymysql.cursors
except ImportError:
    print("Error: pymysql is required. Install with: pip install pymysql")
    sys.exit(1)

try:
    import psycopg2
    import psycopg2.extras
except ImportError:
    print("Error: psycopg2 is required. Install with: pip install psycopg2-binary")
    sys.exit(1)

# Configure logging
logging.basicConfig(
    level=logging.INFO,
    format='%(asctime)s [%(levelname)s] %(message)s',
    datefmt='%Y-%m-%d %H:%M:%S'
)
logger = logging.getLogger(__name__)

# =====================================================
# TABLE DEFINITIONS (from migration_full.sql)
# =====================================================
TABLE_ORDER = [
    'configuration',
    'accounts',
    'entities',
    'items',
    'skills',
    'spells',
    'profs',
    'friends',
    'enemy',
    'apprentice',
    'arena',
    'auction',
    'bannedips',
    'chi',
    'chiretreat',
    'claimitems',
    'clanrelation',
    'clans',
    'dailyquest',
    'dailyquests',
    'detaineditems',
    'elitepk',
    'flooritem',
    'furniture',
    'guild_arsenals',
    'guild_arsenalsdonation',
    'guildally',
    'guildarsenal',
    'guildenemy',
    'guilds',
    'house',
    'inner_power',
    'itemadding',
    'jiang_hu',
    'josephvariable',
    'kingdommission',
    'lottery',
    'maps',
    'monsterinfos',
    'monsterspawns',
    'nobility',
    'npcs',
    'partners',
    'pk_explorer',
    'prizes',
    'quests',
    'rates',
    'refinery',
    'refineryboxes',
    'reincarnation',
    'servergift',
    'skillteampk',
    'sobnpcs',
    'status',
    'subclasses',
    'teamarena',
    'teampk',
    'titles',
    'unions',
    'variablevault',
    'way2heroes',
    'activeness',
    'adv',
    'achievement',
]

# MySQL to PostgreSQL type conversions
TYPE_CONVERSIONS = {
    'tinyint': 'SMALLINT',
    'smallint': 'SMALLINT',
    'mediumint': 'INTEGER',
    'int': 'INTEGER',
    'bigint': 'BIGINT',
    'float': 'REAL',
    'double': 'DOUBLE PRECISION',
    'decimal': 'NUMERIC',
    'varchar': 'VARCHAR',
    'char': 'CHAR',
    'text': 'TEXT',
    'mediumtext': 'TEXT',
    'longtext': 'TEXT',
    'blob': 'BYTEA',
    'mediumblob': 'BYTEA',
    'longblob': 'BYTEA',
    'binary': 'BYTEA',
    'varbinary': 'BYTEA',
    'datetime': 'TIMESTAMP',
    'timestamp': 'TIMESTAMP',
    'date': 'DATE',
    'time': 'TIME',
    'enum': 'VARCHAR(255)',
    'set': 'TEXT',
    'bit': 'BOOLEAN',
    'bool': 'BOOLEAN',
    'boolean': 'BOOLEAN',
    'json': 'JSONB',
}


class MySQLConnection:
    """MySQL connection wrapper."""
    
    def __init__(self, host: str, port: int, database: str, user: str, password: str):
        self.config = {
            'host': host,
            'port': port,
            'database': database,
            'user': user,
            'password': password,
            'charset': 'utf8mb4',
            'cursorclass': pymysql.cursors.DictCursor,
            'autocommit': True,
        }
        self.connection = None
    
    def connect(self):
        """Establish connection to MySQL."""
        self.connection = pymysql.connect(**self.config)
        logger.info(f"Connected to MySQL: {self.config['host']}:{self.config['port']}/{self.config['database']}")
    
    def disconnect(self):
        """Close MySQL connection."""
        if self.connection:
            self.connection.close()
            self.connection = None
    
    def get_tables(self) -> List[str]:
        """Get list of all tables in the database."""
        with self.connection.cursor() as cursor:
            cursor.execute("SHOW TABLES")
            tables = [list(row.values())[0] for row in cursor.fetchall()]
        return tables
    
    def get_table_schema(self, table: str) -> List[Dict[str, Any]]:
        """Get column information for a table."""
        with self.connection.cursor() as cursor:
            cursor.execute(f"DESCRIBE `{table}`")
            columns = cursor.fetchall()
        return columns
    
    def get_row_count(self, table: str) -> int:
        """Get the number of rows in a table."""
        with self.connection.cursor() as cursor:
            cursor.execute(f"SELECT COUNT(*) as count FROM `{table}`")
            result = cursor.fetchone()
        return result['count']
    
    def fetch_batch(self, table: str, offset: int, limit: int) -> List[Dict[str, Any]]:
        """Fetch a batch of rows from a table."""
        with self.connection.cursor() as cursor:
            cursor.execute(f"SELECT * FROM `{table}` LIMIT %s OFFSET %s", (limit, offset))
            rows = cursor.fetchall()
        return rows


class PostgreSQLConnection:
    """PostgreSQL connection wrapper."""
    
    def __init__(self, host: str, port: int, database: str, user: str, password: str):
        self.config = {
            'host': host,
            'port': port,
            'database': database,
            'user': user,
            'password': password,
        }
        self.connection = None
    
    def connect(self):
        """Establish connection to PostgreSQL."""
        self.connection = psycopg2.connect(**self.config)
        self.connection.autocommit = False
        logger.info(f"Connected to PostgreSQL: {self.config['host']}:{self.config['port']}/{self.config['database']}")
    
    def disconnect(self):
        """Close PostgreSQL connection."""
        if self.connection:
            self.connection.close()
            self.connection = None
    
    def execute(self, sql: str, params: Optional[tuple] = None):
        """Execute a SQL statement."""
        with self.connection.cursor() as cursor:
            cursor.execute(sql, params)
    
    def execute_many(self, sql: str, params_list: List[tuple]):
        """Execute a SQL statement with multiple parameter sets."""
        with self.connection.cursor() as cursor:
            psycopg2.extras.execute_batch(cursor, sql, params_list, page_size=1000)
    
    def commit(self):
        """Commit the current transaction."""
        self.connection.commit()
    
    def rollback(self):
        """Rollback the current transaction."""
        self.connection.rollback()
    
    def table_exists(self, table: str) -> bool:
        """Check if a table exists."""
        with self.connection.cursor() as cursor:
            cursor.execute("""
                SELECT EXISTS (
                    SELECT FROM information_schema.tables 
                    WHERE table_schema = 'public' 
                    AND table_name = %s
                )
            """, (table,))
            return cursor.fetchone()[0]
    
    def get_row_count(self, table: str) -> int:
        """Get the number of rows in a table."""
        with self.connection.cursor() as cursor:
            cursor.execute(f"SELECT COUNT(*) FROM {table}")
            return cursor.fetchone()[0]
    
    def truncate_table(self, table: str):
        """Truncate a table."""
        with self.connection.cursor() as cursor:
            cursor.execute(f"TRUNCATE TABLE {table} CASCADE")
    
    def disable_triggers(self, table: str):
        """Disable triggers on a table for faster insertion."""
        with self.connection.cursor() as cursor:
            cursor.execute(f"ALTER TABLE {table} DISABLE TRIGGER ALL")
    
    def enable_triggers(self, table: str):
        """Enable triggers on a table."""
        with self.connection.cursor() as cursor:
            cursor.execute(f"ALTER TABLE {table} ENABLE TRIGGER ALL")
    
    def reset_sequence(self, table: str, column: str):
        """Reset a sequence to the max value of a column."""
        with self.connection.cursor() as cursor:
            cursor.execute(f"""
                SELECT setval(pg_get_serial_sequence('{table}', '{column}'), 
                    COALESCE((SELECT MAX({column}) FROM {table}), 1))
            """)


def convert_mysql_type(mysql_type: str) -> str:
    """Convert MySQL column type to PostgreSQL type."""
    mysql_type_lower = mysql_type.lower().strip()
    
    # Handle types with parameters (e.g., varchar(255))
    base_type = mysql_type_lower.split('(')[0].strip()
    
    # Handle specific types
    if base_type in TYPE_CONVERSIONS:
        pg_type = TYPE_CONVERSIONS[base_type]
        
        # Preserve parameters for types that need them
        if '(' in mysql_type_lower and base_type in ('varchar', 'char', 'decimal', 'numeric'):
            params = mysql_type_lower.split('(')[1].rstrip(')')
            return f"{pg_type}({params})"
        
        return pg_type
    
    # Default to TEXT for unknown types
    return 'TEXT'


def convert_value(value: Any, mysql_type: str) -> Any:
    """Convert a MySQL value for PostgreSQL insertion."""
    if value is None:
        return None
    
    mysql_type_lower = mysql_type.lower().strip()
    base_type = mysql_type_lower.split('(')[0].strip()
    
    # Handle binary data
    if base_type in ('blob', 'mediumblob', 'longblob', 'binary', 'varbinary'):
        if isinstance(value, (bytes, bytearray)):
            return psycopg2.Binary(value)
        return value
    
    # Handle boolean values
    if base_type in ('bit', 'bool', 'boolean'):
        if isinstance(value, (int, float)):
            return bool(value)
        if isinstance(value, str):
            return value.lower() in ('1', 'true', 'yes', 'on')
        return bool(value)
    
    # Handle datetime/timestamp
    if base_type in ('datetime', 'timestamp'):
        if isinstance(value, str):
            try:
                return datetime.strptime(value, '%Y-%m-%d %H:%M:%S')
            except ValueError:
                return value
        return value
    
    # Handle date
    if base_type == 'date':
        if isinstance(value, str):
            try:
                return datetime.strptime(value, '%Y-%m-%d').date()
            except ValueError:
                return value
        return value
    
    # Handle JSON
    if base_type == 'json':
        import json
        if isinstance(value, str):
            try:
                return json.loads(value)
            except json.JSONDecodeError:
                return value
        return value
    
    # Default: return as-is
    return value


def generate_insert_sql(table: str, columns: List[str], conflict_action: str = 'nothing') -> str:
    """Generate INSERT SQL statement for PostgreSQL."""
    placeholders = ', '.join(['%s'] * len(columns))
    column_names = ', '.join([f'"{col}"' for col in columns])
    
    if conflict_action == 'nothing':
        return f'INSERT INTO "{table}" ({column_names}) VALUES ({placeholders}) ON CONFLICT DO NOTHING'
    elif conflict_action == 'update':
        # Assuming first column is primary key
        update_set = ', '.join([f'"{col}" = EXCLUDED."{col}"' for col in columns[1:]])
        return f'INSERT INTO "{table}" ({column_names}) VALUES ({placeholders}) ON CONFLICT ("{columns[0]}") DO UPDATE SET {update_set}'
    else:
        return f'INSERT INTO "{table}" ({column_names}) VALUES ({placeholders})'


class MigrationStats:
    """Track migration statistics."""
    
    def __init__(self):
        self.tables_processed = 0
        self.tables_skipped = 0
        self.tables_failed = 0
        self.total_rows_migrated = 0
        self.total_rows_skipped = 0
        self.start_time = None
        self.end_time = None
        self.table_stats: Dict[str, Dict[str, Any]] = {}
    
    def start(self):
        self.start_time = time.time()
    
    def end(self):
        self.end_time = time.time()
    
    def add_table_stats(self, table: str, rows_migrated: int, rows_skipped: int, 
                        duration: float, success: bool, error: Optional[str] = None):
        self.table_stats[table] = {
            'rows_migrated': rows_migrated,
            'rows_skipped': rows_skipped,
            'duration': duration,
            'success': success,
            'error': error,
        }
        if success:
            self.tables_processed += 1
            self.total_rows_migrated += rows_migrated
            self.total_rows_skipped += rows_skipped
        else:
            self.tables_failed += 1
    
    def skip_table(self, table: str, reason: str):
        self.table_stats[table] = {
            'rows_migrated': 0,
            'rows_skipped': 0,
            'duration': 0,
            'success': False,
            'skipped': True,
            'reason': reason,
        }
        self.tables_skipped += 1
    
    def print_summary(self):
        duration = (self.end_time - self.start_time) if self.start_time and self.end_time else 0
        
        print("\n" + "=" * 70)
        print("MIGRATION SUMMARY")
        print("=" * 70)
        print(f"Total Duration: {duration:.2f} seconds")
        print(f"Tables Processed: {self.tables_processed}")
        print(f"Tables Skipped: {self.tables_skipped}")
        print(f"Tables Failed: {self.tables_failed}")
        print(f"Total Rows Migrated: {self.total_rows_migrated:,}")
        print(f"Total Rows Skipped: {self.total_rows_skipped:,}")
        print("\nTable Details:")
        print("-" * 70)
        
        for table, stats in sorted(self.table_stats.items()):
            if stats.get('skipped'):
                print(f"  {table}: SKIPPED - {stats.get('reason', 'Unknown')}")
            elif stats['success']:
                print(f"  {table}: {stats['rows_migrated']:,} rows in {stats['duration']:.2f}s")
            else:
                print(f"  {table}: FAILED - {stats.get('error', 'Unknown error')}")
        
        print("=" * 70)


class DatabaseMigrator:
    """Main migration orchestrator."""
    
    def __init__(self, mysql_conn: MySQLConnection, pg_conn: PostgreSQLConnection,
                 batch_size: int = 1000, conflict_action: str = 'nothing',
                 tables: Optional[List[str]] = None, skip_schema: bool = False,
                 dry_run: bool = False, truncate: bool = False):
        self.mysql = mysql_conn
        self.pg = pg_conn
        self.batch_size = batch_size
        self.conflict_action = conflict_action
        self.tables = tables
        self.skip_schema = skip_schema
        self.dry_run = dry_run
        self.truncate = truncate
        self.stats = MigrationStats()
    
    def connect(self):
        """Establish connections to both databases."""
        self.mysql.connect()
        self.pg.connect()
    
    def disconnect(self):
        """Close both database connections."""
        self.mysql.disconnect()
        self.pg.disconnect()
    
    def get_tables_to_migrate(self) -> List[str]:
        """Get list of tables to migrate."""
        if self.tables:
            # Use specified tables, but verify they exist in MySQL
            mysql_tables = self.mysql.get_tables()
            valid_tables = [t for t in self.tables if t in mysql_tables]
            invalid_tables = [t for t in self.tables if t not in mysql_tables]
            
            if invalid_tables:
                logger.warning(f"Tables not found in MySQL: {', '.join(invalid_tables)}")
            
            return valid_tables
        
        # Use predefined order, falling back to MySQL table list
        mysql_tables = set(self.mysql.get_tables())
        ordered_tables = [t for t in TABLE_ORDER if t in mysql_tables]
        
        # Add any tables not in TABLE_ORDER
        for table in sorted(mysql_tables):
            if table not in ordered_tables:
                ordered_tables.append(table)
        
        return ordered_tables
    
    def migrate_table(self, table: str) -> bool:
        """Migrate a single table from MySQL to PostgreSQL."""
        start_time = time.time()
        
        try:
            # Check if table exists in PostgreSQL
            if not self.pg.table_exists(table):
                logger.warning(f"Table '{table}' does not exist in PostgreSQL, skipping")
                self.stats.skip_table(table, "Table not found in PostgreSQL")
                return False
            
            # Get row counts
            mysql_count = self.mysql.get_row_count(table)
            logger.info(f"Migrating table '{table}' ({mysql_count:,} rows)")
            
            if mysql_count == 0:
                self.stats.add_table_stats(table, 0, 0, time.time() - start_time, True)
                return True
            
            if self.dry_run:
                logger.info(f"[DRY RUN] Would migrate {mysql_count:,} rows from '{table}'")
                self.stats.add_table_stats(table, 0, 0, time.time() - start_time, True)
                return True
            
            # Truncate if requested
            if self.truncate:
                logger.info(f"Truncating table '{table}'")
                self.pg.truncate_table(table)
            
            # Get column information
            mysql_columns = self.mysql.get_table_schema(table)
            column_names = [col['Field'] for col in mysql_columns]
            column_types = {col['Field']: col['Type'] for col in mysql_columns}
            
            # Migrate in batches
            offset = 0
            total_migrated = 0
            total_skipped = 0
            
            while offset < mysql_count:
                # Fetch batch from MySQL
                rows = self.mysql.fetch_batch(table, offset, self.batch_size)
                
                if not rows:
                    break
                
                # Prepare data for PostgreSQL
                insert_sql = generate_insert_sql(table, column_names, self.conflict_action)
                params_list = []
                
                for row in rows:
                    values = []
                    for col in column_names:
                        value = row.get(col)
                        converted_value = convert_value(value, column_types[col])
                        values.append(converted_value)
                    params_list.append(tuple(values))
                
                # Insert into PostgreSQL
                try:
                    self.pg.execute_many(insert_sql, params_list)
                    self.pg.commit()
                    total_migrated += len(rows)
                except Exception as e:
                    self.pg.rollback()
                    logger.error(f"Batch insert failed for '{table}' at offset {offset}: {e}")
                    
                    # Try row-by-row insertion for this batch
                    for i, params in enumerate(params_list):
                        try:
                            self.pg.execute(insert_sql, params)
                            self.pg.commit()
                            total_migrated += 1
                        except Exception as row_error:
                            self.pg.rollback()
                            total_skipped += 1
                            logger.debug(f"Row {offset + i} skipped: {row_error}")
                
                offset += self.batch_size
                
                # Progress update
                progress = min(100, int((offset / mysql_count) * 100))
                logger.info(f"  Progress: {progress}% ({total_migrated:,}/{mysql_count:,})")
            
            duration = time.time() - start_time
            self.stats.add_table_stats(table, total_migrated, total_skipped, duration, True)
            logger.info(f"Completed '{table}': {total_migrated:,} migrated, {total_skipped:,} skipped in {duration:.2f}s")
            return True
            
        except Exception as e:
            duration = time.time() - start_time
            self.stats.add_table_stats(table, 0, 0, duration, False, str(e))
            logger.error(f"Failed to migrate table '{table}': {e}")
            return False
    
    def run(self):
        """Execute the migration."""
        self.stats.start()
        
        try:
            self.connect()
            
            # Get tables to migrate
            tables = self.get_tables_to_migrate()
            logger.info(f"Found {len(tables)} tables to migrate")
            
            # Migrate each table
            for i, table in enumerate(tables, 1):
                logger.info(f"\n[{i}/{len(tables)}] Processing table: {table}")
                self.migrate_table(table)
            
        except Exception as e:
            logger.error(f"Migration failed: {e}")
            raise
        finally:
            self.stats.end()
            self.disconnect()
            self.stats.print_summary()


def parse_args():
    """Parse command line arguments."""
    parser = argparse.ArgumentParser(
        description='Nyx Database Migration Tool - MySQL to PostgreSQL',
        formatter_class=argparse.RawDescriptionHelpFormatter,
        epilog="""
Examples:
  # Basic migration
  python migrate.py --mysql-host localhost --pg-host localhost
  
  # Dry run (no actual data transfer)
  python migrate.py --dry-run
  
  # Migrate specific tables
  python migrate.py --tables accounts,entities,items
  
  # With truncation (clear PostgreSQL tables first)
  python migrate.py --truncate
  
  # Custom batch size
  python migrate.py --batch-size 5000
        """
    )
    
    # MySQL connection
    mysql_group = parser.add_argument_group('MySQL Connection')
    mysql_group.add_argument('--mysql-host', default='localhost', help='MySQL host (default: localhost)')
    mysql_group.add_argument('--mysql-port', type=int, default=3306, help='MySQL port (default: 3306)')
    mysql_group.add_argument('--mysql-db', default='Nyx', help='MySQL database name (default: Nyx)')
    mysql_group.add_argument('--mysql-user', default='root', help='MySQL username (default: root)')
    mysql_group.add_argument('--mysql-pass', default='12345678', help='MySQL password (default: 12345678)')
    
    # PostgreSQL connection
    pg_group = parser.add_argument_group('PostgreSQL Connection')
    pg_group.add_argument('--pg-host', default='localhost', help='PostgreSQL host (default: localhost)')
    pg_group.add_argument('--pg-port', type=int, default=5432, help='PostgreSQL port (default: 5432)')
    pg_group.add_argument('--pg-db', default='nyx', help='PostgreSQL database name (default: nyx)')
    pg_group.add_argument('--pg-user', default='postgres', help='PostgreSQL username (default: postgres)')
    pg_group.add_argument('--pg-pass', default='12345678', help='PostgreSQL password (default: 12345678)')
    
    # Migration options
    options_group = parser.add_argument_group('Migration Options')
    options_group.add_argument('--batch-size', type=int, default=1000, help='Batch size for data transfer (default: 1000)')
    options_group.add_argument('--tables', help='Comma-separated list of tables to migrate (default: all)')
    options_group.add_argument('--skip-schema', action='store_true', help='Skip schema creation (assume tables exist)')
    options_group.add_argument('--truncate', action='store_true', help='Truncate PostgreSQL tables before migration')
    options_group.add_argument('--conflict', choices=['nothing', 'update'], default='nothing',
                              help='Conflict resolution strategy (default: nothing)')
    options_group.add_argument('--dry-run', action='store_true', help='Simulate migration without actual data transfer')
    
    # Logging
    logging_group = parser.add_argument_group('Logging')
    logging_group.add_argument('--verbose', '-v', action='store_true', help='Enable verbose logging')
    logging_group.add_argument('--quiet', '-q', action='store_true', help='Suppress output except errors')
    
    return parser.parse_args()


def main():
    """Main entry point."""
    args = parse_args()
    
    # Configure logging level
    if args.verbose:
        logging.getLogger().setLevel(logging.DEBUG)
    elif args.quiet:
        logging.getLogger().setLevel(logging.ERROR)
    
    # Print banner
    if not args.quiet:
        print("\n" + "=" * 70)
        print("Nyx Database Migration Tool")
        print("MySQL -> PostgreSQL")
        print("=" * 70)
        
        if args.dry_run:
            print("\n*** DRY RUN MODE - No data will be transferred ***\n")
    
    # Parse tables
    tables = None
    if args.tables:
        tables = [t.strip() for t in args.tables.split(',')]
    
    # Create connections
    mysql_conn = MySQLConnection(
        host=args.mysql_host,
        port=args.mysql_port,
        database=args.mysql_db,
        user=args.mysql_user,
        password=args.mysql_pass,
    )
    
    pg_conn = PostgreSQLConnection(
        host=args.pg_host,
        port=args.pg_port,
        database=args.pg_db,
        user=args.pg_user,
        password=args.pg_pass,
    )
    
    # Create migrator
    migrator = DatabaseMigrator(
        mysql_conn=mysql_conn,
        pg_conn=pg_conn,
        batch_size=args.batch_size,
        conflict_action=args.conflict,
        tables=tables,
        skip_schema=args.skip_schema,
        dry_run=args.dry_run,
        truncate=args.truncate,
    )
    
    # Run migration
    try:
        migrator.run()
    except KeyboardInterrupt:
        logger.info("\nMigration cancelled by user")
        sys.exit(1)
    except Exception as e:
        logger.error(f"Migration failed: {e}")
        sys.exit(1)
    
    if not args.quiet:
        print("\nMigration completed!")


if __name__ == '__main__':
    main()
