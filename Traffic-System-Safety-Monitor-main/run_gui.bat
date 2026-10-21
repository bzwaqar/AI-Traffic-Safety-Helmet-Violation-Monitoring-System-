@echo off
cd /d "%~dp0"
echo Starting Helmet Detection GUI...

if exist "D:\BadmintonAI\venv\Scripts\python.exe" (
    "D:\BadmintonAI\venv\Scripts\python.exe" gui.py
) else if exist "%~dp0.venv\Scripts\python.exe" (
    "%~dp0.venv\Scripts\python.exe" gui.py
) else if exist "%~dp0..\.venv\Scripts\python.exe" (
    "%~dp0..\.venv\Scripts\python.exe" gui.py
) else (
    python gui.py
)
pause
