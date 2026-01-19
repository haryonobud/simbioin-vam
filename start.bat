@echo off
echo ======================================
echo   Simbioin - Docker Startup
echo ======================================
echo.

REM --- SAFETY CLEANUP ---
IF EXIST data\STOP_APP (
  del data\STOP_APP
)

docker compose pull

echo.
echo Starting Simbioin service...
docker compose up -d

echo.
echo --------------------------------------
echo Simbioin is now running.
echo Open your browser at:
echo http://localhost:8000
echo.
echo To stop Simbioin, click "Shut down"
echo in the web interface.
echo --------------------------------------
echo.

REM ===== WATCH LOOP =====
:watch
IF EXIST data\STOP_APP (
  echo.
  echo Stop signal detected...
  call stop.bat
  del data\STOP_APP
  exit
)

timeout /t 5 >nul
goto watch
