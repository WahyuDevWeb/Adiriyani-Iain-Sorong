@echo off
setlocal
cd /d "%~dp0"
where node >nul 2>nul
if %errorlevel%==0 (
  echo Starting portfolio without installing any npm packages...
  start "Portfolio Web" cmd /c "timeout /t 2 >nul & start http://localhost:3162"
  node server.js
) else (
  echo Node.js is not installed. Opening the static website directly instead.
  start "" "%~dp0public\index.html"
  echo For a local server, install Node.js 18+ once. No npm packages are needed.
  pause
)
