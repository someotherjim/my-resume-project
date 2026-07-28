@off
title JSON Resume Launcher
echo Starting Local Python Web Server...

:: 1. Force the terminal to point to the correct workspace directory folder path
cd /d "C:\ResumeWorkspace"

:: 2. Launch the Python server in the background so the script can continue executing
start /b python -m http.server 8000

:: 3. Give the Python engine a 2-second buffer window to initialize the server pipeline
timeout /t 2 /nobreak >nul

echo Launching Resume Sandbox inside Google Chrome...

:: 4. Instruct Windows to specifically run Google Chrome straight to your localhost port
start chrome "http://localhost:8000"

exit