@echo off
setlocal enabledelayedexpansion

REM Prompt user for MySQL username
set /p username=Enter MySQL username:

REM Prompt user for MySQL password
set /p password=Enter MySQL password:

REM Prompt user for database name
set /p dbname=Enter database name:

REM Check if the database exists, if not, create it
mysql -u %username% -p%password% -e "USE %dbname%" 2>nul
if errorlevel 1 (
    mysql -u %username% -p%password% -e "CREATE DATABASE %dbname%"
    echo Database %dbname% created.
)

REM Ask user whether to import only definitions or both definitions and data
set /p import=Do you want to import only definitions (Y/N)? 

if /i "%import%"=="Y" (
    REM Import only definitions
    mysql -u %username% -p%password% %dbname% < def.sql
    echo Definitions imported into %dbname%.
) else if /i "%import%"=="N" (
    REM Import both definitions and data
    set /p importdata=Do you want to import data as well (Y/N)? 
    if /i "%importdata%"=="Y" (
        mysql -u %username% -p%password% %dbname% < data.sql
        echo Data imported into %dbname%.
    ) else (
        echo Data import skipped.
    )
) else (
    echo Invalid input. Please enter Y or N.
)

pause