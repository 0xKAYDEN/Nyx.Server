@echo off
REM Nyx Database Migration Script
REM This script runs the MySQL to PostgreSQL migration

echo ========================================
echo Nyx Database Migration Tool
echo ========================================
echo.

REM Check if Python is installed
python --version >nul 2>&1
if errorlevel 1 (
    echo Error: Python is not installed or not in PATH
    exit /b 1
)

REM Check if requirements are installed
echo Checking dependencies...
pip show pymysql >nul 2>&1
if errorlevel 1 (
    echo Installing pymysql...
    pip install pymysql
)

pip show psycopg2-binary >nul 2>&1
if errorlevel 1 (
    echo Installing psycopg2-binary...
    pip install psycopg2-binary
)

echo.
echo Starting migration...
echo.

REM Run migration with default settings
python migrate_mysql_to_postgres.py ^
    --mysql-host localhost ^
    --mysql-port 3306 ^
    --mysql-db Nyx ^
    --mysql-user root ^
    --mysql-pass 12345678 ^
    --pg-host localhost ^
    --pg-port 5432 ^
    --pg-db nyx ^
    --pg-user postgres ^
    --pg-pass 12345678 ^
    --batch-size 1000

echo.
echo Migration completed!
pause
