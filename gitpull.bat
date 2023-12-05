@echo off
cd /d "C:\Program Files (x86)\KDSnDID\App"
rem git stash
rem git pull
rem npm install & npx prisma db push

@REM SETLOCAL ENABLEDELAYEDEXPANSION
@REM SET installed=0

@REM REM 서비스 목록에서 "SQL Server" 서비스가 실행 중인지 확인
@REM FOR /F "tokens=*" %%I IN ('sc query') DO (
@REM     echo %%I | find /I "SERVICE_NAME: MSSQL" >nul
@REM     IF !ERRORLEVEL! == 0 (
@REM         SET installed=1
@REM         GOTO FoundSQLServer
@REM     )
@REM )

@REM :FoundSQLServer
@REM IF %installed% == 1 (
@REM     ECHO Microsoft SQL Server is installed on this system.
@REM ) ELSE (
@REM     ECHO Microsoft SQL Server is NOT installed on this system.
@REM )

@REM ENDLOCAL