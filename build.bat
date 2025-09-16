@echo off
REM This script packages the python script into a single executable file.
REM It requires Python to be installed and in the system's PATH.

SET SCRIPT_NAME=list_comparator.py
SET EXE_NAME=ListComparator

echo #############################################################
echo # Checking for pyinstaller...
echo #############################################################
pip show pyinstaller >nul 2>&1
IF %ERRORLEVEL% NEQ 0 (
    echo pyinstaller not found. Attempting to install it now...
    pip install pyinstaller
    IF %ERRORLEVEL% NEQ 0 (
        echo Failed to install pyinstaller. Please install it manually: pip install pyinstaller
        pause
        exit /b 1
    )
    echo pyinstaller installed successfully.
) ELSE (
    echo pyinstaller is already installed.
)

echo.
echo #############################################################
echo # Starting the build process...
echo #############################################################
pyinstaller --onefile --windowed --name "%EXE_NAME%" "%SCRIPT_NAME%"

IF %ERRORLEVEL% EQU 0 (
    echo.
    echo #############################################################
    echo # Build successful!
    echo # You can find your executable here:
    echo # %cd%\dist\%EXE_NAME%.exe
    echo #############################################################
) ELSE (
    echo.
    echo #############################################################
    echo # Build failed. Please check the output above for errors.
    echo #############################################################
)

echo.
pause
