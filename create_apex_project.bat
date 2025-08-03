@echo off
set /p folder=Enter the name of your new APEX project folder (e.g. project3_inventory): 

mkdir %folder%
cd %folder%
echo > export.sql

echo # APEX Project: %folder% > README.md
echo. >> README.md
echo ## English >> README.md
echo This is one of my Oracle APEX learning/test projects. >> README.md
echo It includes a SQL export and was inspired by tutorials from the Oracle APEX YouTube channel. >> README.md
echo. >> README.md
echo ## Deutsch >> README.md
echo Dies ist eines meiner Testprojekte mit Oracle APEX. >> README.md
echo Ich habe Tutorials vom offiziellen Oracle APEX YouTube-Kanal als Grundlage verwendet. >> README.md
echo. >> README.md
echo ## فارسی >> README.md
echo این یکی از پروژه‌های تستی من با Oracle APEX هست. >> README.md
echo از آموزش‌های کانال یوتیوب رسمی Oracle APEX استفاده کردم. >> README.md
echo. >> README.md
echo --- >> README.md
echo Exported SQL: See [export.sql](./export.sql) >> README.md

echo.
echo ✅ Project folder "%folder%" created with README.md and export.sql
pause
