@echo off
title RecRoom Launcher

set "STEAM=C:\Program Files (x86)\Steam\steam.exe"
set "GAME=C:\Games\client-2025"

if not exist "%STEAM%" (
    echo Steam не найден!
    pause
    exit /b
)

if not exist "%GAME%\RecRoomScreen.bat" (
    echo Не найдена папка игры!
    pause
    exit /b
)

start "" "%STEAM%" -silent
timeout /t 6 /nobreak >nul

cd /d "%GAME%"
call "RecRoomScreen.bat"