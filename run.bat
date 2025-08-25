@echo off
echo Activating virtual environment...
call venv\Scripts\activate.bat

echo Starting the Flask application...
python -m src.main

echo Application has been stopped.
pause