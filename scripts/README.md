# Nyx Database Migration Scripts

This directory contains tools for migrating the Nyx database from MySQL to PostgreSQL.

## Files

- `migrate_mysql_to_postgres.py` - Main Python migration tool
- `requirements.txt` - Python dependencies
- `migrate.bat` - Windows batch script for quick migration
- `README.md` - This file

## Prerequisites

1. **Python 3.8+** installed and in PATH
2. **MySQL** database with existing Nyx data
3. **PostgreSQL** database created (run `migration.sql` first)
4. Network access to both databases

## Quick Start

### 1. Install Python Dependencies

```bash
pip install -r requirements.txt
```

### 2. Create PostgreSQL Database

First, create the PostgreSQL database and run the schema migration:

```bash
# Connect to PostgreSQL
psql -U postgres

# Create database
CREATE DATABASE nyx WITH ENCODING='UTF8';

# Connect to nyx database
\c nyx;

# Run the schema migration (from src/Nyx/Database/PostgreSQL/)
\i migration_full.sql
```

### 3. Run Data Migration

```bash
# Basic migration with default settings
python migrate_mysql_to_postgres.py

# With custom connection settings
python migrate_mysql_to_postgres.py \
    --mysql-host localhost \
    --mysql-port 3306 \
    --mysql-db Nyx \
    --mysql-user root \
    --mysql-pass 12345678 \
    --pg-host localhost \
    --pg-port 5432 \
    --pg-db nyx \
    --pg-user postgres \
    --pg-pass 12345678

# Or use the Windows batch script
migrate.bat
```

## Command Line Options

### MySQL Connection
| Option | Default | Description |
|--------|---------|-------------|
| `--mysql-host` | localhost | MySQL server host |
| `--mysql-port` | 3306 | MySQL server port |
| `--mysql-db` | Nyx | MySQL database name |
| `--mysql-user` | root | MySQL username |
| `--mysql-pass` | 12345678 | MySQL password |

### PostgreSQL Connection
| Option | Default | Description |
|--------|---------|-------------|
| `--pg-host` | localhost | PostgreSQL server host |
| `--pg-port` | 5432 | PostgreSQL server port |
| `--pg-db` | nyx | PostgreSQL database name |
| `--pg-user` | postgres | PostgreSQL username |
| `--pg-pass` | 12345678 | PostgreSQL password |

### Migration Options
| Option | Default | Description |
|--------|---------|-------------|
| `--batch-size` | 1000 | Number of rows to transfer per batch |
| `--tables` | all | Comma-separated list of specific tables to migrate |
| `--truncate` | false | Truncate PostgreSQL tables before migration |
| `--conflict` | nothing | Conflict resolution: `nothing` or `update` |
| `--dry-run` | false | Simulate migration without actual data transfer |
| `--verbose` / `-v` | false | Enable verbose logging |
| `--quiet` / `-q` | false | Suppress output except errors |

## Examples

### Dry Run (No Data Transfer)
```bash
python migrate_mysql_to_postgres.py --dry-run
```

### Migrate Specific Tables Only
```bash
python migrate_mysql_to_postgres.py --tables accounts,entities,items,guilds
```

### Migrate with Truncation
```bash
python migrate_mysql_to_postgres.py --truncate
```

### Migrate with Conflict Resolution (Update Existing)
```bash
python migrate_mysql_to_postgres.py --conflict update
```

### Large Database Migration (Custom Batch Size)
```bash
python migrate_mysql_to_postgres.py --batch-size 5000 --verbose
```

## Table Migration Order

The migration tool follows a specific order to respect foreign key constraints:

1. `configuration` - Server settings
2. `accounts` - Player accounts
3. `entities` - Player characters
4. `items` - Player items
5. `skills` / `spells` / `profs` - Character abilities
6. `friends` / `enemy` - Social connections
7. `guilds` / `clans` / `unions` - Organizations
8. And more...

## Troubleshooting

### Connection Issues
```bash
# Test MySQL connection
mysql -h localhost -u root -p -e "SELECT 1"

# Test PostgreSQL connection
psql -h localhost -U postgres -d nyx -c "SELECT 1"
```

### Permission Errors
Ensure the database user has sufficient permissions:

**MySQL:**
```sql
GRANT SELECT ON Nyx.* TO 'migration_user'@'%';
```

**PostgreSQL:**
```sql
GRANT ALL PRIVILEGES ON DATABASE nyx TO postgres;
GRANT ALL PRIVILEGES ON ALL TABLES IN SCHEMA public TO postgres;
```

### Data Type Conversion Issues

The tool automatically converts MySQL data types to PostgreSQL equivalents:

| MySQL Type | PostgreSQL Type |
|------------|-----------------|
| TINYINT | SMALLINT |
| INT | INTEGER |
| BIGINT | BIGINT |
| VARCHAR(n) | VARCHAR(n) |
| TEXT | TEXT |
| BLOB | BYTEA |
| DATETIME | TIMESTAMP |
| TINYINT(1) | BOOLEAN |

### Slow Migration

If migration is slow:
1. Increase `--batch-size` (e.g., 5000)
2. Disable indexes temporarily in PostgreSQL
3. Run migration during low-traffic hours

## Logs

Migration logs are printed to stdout. To save to file:

```bash
python migrate_mysql_to_postgres.py --verbose 2>&1 | tee migration.log
```

## Post-Migration Steps

After successful migration:

1. **Verify Data Counts:**
   ```sql
   -- Compare counts between MySQL and PostgreSQL
   SELECT COUNT(*) FROM entities;
   SELECT COUNT(*) FROM items;
   ```

2. **Update Configuration:**
   - Update `DatabaseConfiguration.cs` to use PostgreSQL settings
   - Update connection strings in application config

3. **Test Application:**
   - Start the Nyx server
   - Test login and basic operations
   - Monitor for any database errors

4. **Cleanup:**
   - Once verified, MySQL can be decommissioned
   - Keep MySQL backup for safety period

## Support

For issues or questions:
- Check the migration logs for detailed error messages
- Review the PostgreSQL schema in `src/Nyx/Database/PostgreSQL/migration_full.sql`
- Ensure all prerequisite tables exist in PostgreSQL before migration
