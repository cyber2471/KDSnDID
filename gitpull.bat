@echo off
cd /d "C:\Program Files (x86)\KDSnDID\App"
git pull
npm install & npx prisma db push