@echo off
echo Setting up the project environment...

REM Check if python is installed
python --version >nul 2>&1
if %errorlevel% neq 0 (
    echo Python is not installed or not in PATH. Please install Python and try again.
    pause
    exit /b
)

REM Check if venv directory exists
if not exist venv (
    echo Creating virtual environment...
    python -m venv venv
) else (
    echo Virtual environment 'venv' already exists.
)

echo Activating virtual environment...
call venv\Scripts\activate.bat

echo Installing dependencies from requirements.txt...
pip install -r requirements.txt

echo Setup complete. You can now run the application using run.bat.
pause