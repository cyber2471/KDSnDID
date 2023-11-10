@echo off
cd /d "C:\Program Files (x86)\KDSnDID\App"
git stash
git pull
npm install & npx prisma db push

SETLOCAL ENABLEDELAYEDEXPANSION
SET installed=0

REM 서비스 목록에서 "SQL Server" 서비스가 실행 중인지 확인
FOR /F "tokens=*" %%I IN ('sc query') DO (
    echo %%I | find /I "SERVICE_NAME: MSSQL" >nul
    IF !ERRORLEVEL! == 0 (
        SET installed=1
        GOTO FoundSQLServer
    )
)

:FoundSQLServer
IF %installed% == 1 (
    ECHO Microsoft SQL Server is installed on this system.
) ELSE (
    ECHO Microsoft SQL Server is NOT installed on this system.
)

ENDLOCAL