@echo off
title Expert Vaidya AI - One-Click Installer
echo ============================================
echo     EXPERT VAIDYA AI - One-Click Installer
echo ============================================
echo.

REM Check if Ollama is installed on this computer
where ollama >nul 2>nul
if %errorlevel% neq 0 (
    echo [ERROR] Ollama is not installed on this computer.
    echo Please download it for free from https://ollama.com and try again.
    pause
    exit /b
)

echo [1/2] Downloading Expert Vaidya AI from the Ollama Registry...
ollama pull tejaas6/expert-vaidya

echo.
echo [2/2] Starting Expert Vaidya AI chat...
echo (Type /bye anytime to exit the chat)
echo.
ollama run tejaas6/expert-vaidya

pause