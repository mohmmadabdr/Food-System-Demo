@echo off
setlocal
cd /d "%~dp0"
start "GourmetOS Demo Server" cmd /k "py -m http.server 8000 || python -m http.server 8000"
timeout /t 2 /nobreak >nul
start "" "http://127.0.0.1:8000/index.html"
