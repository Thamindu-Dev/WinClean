@echo off
:: ============================================================================
:: Section: Check for Administrator Privileges
:: ============================================================================
>nul 2>&1 "%SYSTEMROOT%\system32\cacls.exe" "%SYSTEMROOT%\system32\config\system"
if '%errorlevel%' NEQ '0' (
    echo Requesting administrative privileges...
    goto UACPrompt
) else ( goto gotAdmin )
:UACPrompt
    echo Set UAC = CreateObject^("Shell.Application"^) > "%temp%\getadmin.vbs"
    echo UAC.ShellExecute "%~s0", "", "", "runas", 1 >> "%temp%\getadmin.vbs"
    "%temp%\getadmin.vbs"
    del "%temp%\getadmin.vbs"
    exit /B
:gotAdmin
    pushd "%CD%"
    CD /D "%~dp0"
:: ============================================================================
:: End of Admin Check
:: ============================================================================


:: Cleanup commands start here
echo Running cleanup commands with admin rights...
echo.

echo 1. Clearing Windows Temp folder...
for /f "delims=" %%i in ('dir /s /b /a-d "c:\windows\temp\*.*"') do (
    echo Deleting file: "%%i"
    del /f "%%i" >nul 2>&1
)
rd /s /q c:\windows\temp >nul 2>&1
md c:\windows\temp >nul 2>&1
echo    Done.
echo.

echo 2. Clearing Prefetch folder...
for /f "delims=" %%i in ('dir /s /b /a-d "C:\WINDOWS\Prefetch\*.*"') do (
    echo Deleting file: "%%i"
    del /f "%%i" >nul 2>&1
)
echo    Done.
echo.

echo 3. Clearing User Temp folder...
for /f "delims=" %%i in ('dir /s /b /a-d "%temp%\*.*"') do (
    echo Deleting file: "%%i"
    del /f "%%i" >nul 2>&1
)
echo    Done.
echo.

echo 4. Flushing DNS Cache...
ipconfig /flushdns
echo    Done.
echo.

echo 5. Clearing Windows Update Cache...
net stop wuauserv >nul 2>&1
for /f "delims=" %%i in ('dir /s /b /a-d "C:\Windows\SoftwareDistribution\Download\*.*"') do (
    echo Deleting file: "%%i"
    del /f "%%i" >nul 2>&1
)
net start wuauserv >nul 2>&1
echo    Done.
echo.

echo 6. Emptying the Recycle Bin...
rd /s /q C:\$Recycle.bin >nul 2>&1
echo    Done.
echo.

echo =================================================
echo All cleanup tasks have completed!
echo =================================================
echo.
pause