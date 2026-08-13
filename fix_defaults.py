import psycopg2

conn = psycopg2.connect(host='localhost', port=5432, user='postgres', password='12345678', database='nyx')
cur = conn.cursor()

# Get ALL columns with NOT NULL and no default
cur.execute("""
    SELECT table_name, column_name, data_type
    FROM information_schema.columns 
    WHERE is_nullable = 'NO' AND column_default IS NULL
    AND table_schema = 'public'
    ORDER BY table_name, ordinal_position
""")
rows = cur.fetchall()

fixed = 0
for table, col, dtype in rows:
    try:
        if dtype in ('integer', 'bigint', 'smallint'):
            cur.execute(f'ALTER TABLE "{table}" ALTER COLUMN "{col}" SET DEFAULT 0')
        elif dtype in ('character varying', 'text', 'character'):
            cur.execute(f"ALTER TABLE \"{table}\" ALTER COLUMN \"{col}\" SET DEFAULT ''")
        elif dtype == 'bytea':
            cur.execute(f"ALTER TABLE \"{table}\" ALTER COLUMN \"{col}\" SET DEFAULT ''::bytea")
        elif dtype == 'boolean':
            cur.execute(f'ALTER TABLE "{table}" ALTER COLUMN "{col}" SET DEFAULT false')
        else:
            cur.execute(f'ALTER TABLE "{table}" ALTER COLUMN "{col}" SET DEFAULT 0')
        fixed += 1
    except Exception as e:
        print(f'Error fixing {table}.{col}: {e}')

conn.commit()
print(f'Fixed {fixed} columns')

# Verify
cur.execute("""
    SELECT COUNT(*)
    FROM information_schema.columns 
    WHERE is_nullable = 'NO' AND column_default IS NULL
    AND table_schema = 'public'
""")
print(f'Remaining columns without defaults: {cur.fetchone()[0]}')

cur.close()
conn.close()
