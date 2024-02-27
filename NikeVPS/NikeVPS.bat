@echo off
setlocal enabledelayedexpansion

:: Set the credentials
set /A attempt=0
set "username=NikeSL"
set "password=12345"

:login
if %attempt% geq 3 (
    echo Too many failed attempts. Exiting...
    exit /b
)
set /p "userInput=Username: "
set /p "passInput=Password: "
if "!userInput!"=="%username%" if "!passInput!"=="%password%" (
    goto welcome
) else (
    echo Incorrect username or password. Please try again.
    set /A attempt+=1
    goto login
)

:welcome
:: Play login music using Windows Media Player
start wmplayer "C:\Users\Admin\Desktop\NikeVPS\.amiba\c#\vaR\WWW\html\yoususme\)\login_music.mp3"

echo Welcome To Nike VPS Developed by GAMINGNIKE.
echo Your VPS server IPv4 address is 2.67.146.78
echo.

:: Simulate "hacking" style terminal
echo Initializing system...
ping localhost -n 2 >nul
echo Accessing secured nodes...
ping localhost -n 2 >nul
echo Decrypting VPS protocols...
ping localhost -n 2 >nul
echo Connection established.
ping localhost -n 1 >nul

:: Installation menu
echo Select Your Installations:
echo 1. Apache2
echo 2. NginX
echo 3. Xampp
echo 4. Pterodactyl Panel
echo.
set /p choice=Enter the number of your choice: 
echo.

:: Check the choice and perform the action
if "%choice%"=="1" (
    call :installApache
) else if "%choice%"=="2" (
    call :dummyInstall "NginX"
) else if "%choice%"=="3" (
    call :dummyInstall "Xampp"
) else if "%choice%"=="4" (
    call :dummyInstall "Pterodactyl Panel"
) else (
    echo Invalid choice. Exiting...
    exit /b
)

:: Execute command after installation
echo Executing command...
dir /s
echo Command executed.

:: End of script
echo.
echo Thank you for using Nike VPS Developed by GAMINGNIKE.
endlocal
exit /b

:dummyInstall
    color 2
    echo Installing %1...
    ping localhost -n 3 >nul
    echo Download Completed and Started
    goto :eof

:installApache
    color 2
    echo Installing Apache2...
    ping localhost -n 3 >nul
    echo This is where you'd manually install Apache2. For demonstration, we'll open a browser.
    start http://localhost
    echo Download Completed and Started
    goto :eof
