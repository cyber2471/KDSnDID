@echo off
setlocal

set PROCESS_NAME=node.exe
taskkill /IM "%PROCESS_NAME%" /F

timeout /T 3

cd /d "C:\Program Files (x86)\KDSnDID\App"
npm run dev 