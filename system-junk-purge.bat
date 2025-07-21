@echo off
cls
echo 🔥 WINDOWS JUNK CLEANER: Brutal Mode
timeout /t 1 >nul

:: Kill Explorer to unlock locked junk
echo ⚠️ Killing Explorer...
taskkill /f /im explorer.exe >nul 2>&1

:: Clear user temp
echo.
echo 💥 Clearing %TEMP%
rd /s /q "%TEMP%" 2>nul
mkdir "%TEMP%"

:: Clear Windows temp
echo 💥 Clearing C:\Windows\Temp
rd /s /q "C:\Windows\Temp" 2>nul
mkdir "C:\Windows\Temp"

:: Clear Prefetch
echo 💥 Clearing C:\Windows\Prefetch
rd /s /q "C:\Windows\Prefetch" 2>nul
mkdir "C:\Windows\Prefetch"

:: Clear Recycle Bin
echo 💥 Emptying Recycle Bin
rd /s /q "%SystemDrive%\$Recycle.Bin" 2>nul

:: Clear Windows log files
echo 💥 Deleting .log files under C:\Windows
for /r "C:\Windows" %%G in (*.log) do del "%%G" /f /q >nul 2>&1

:: Clear Error Reports
echo 💥 Nuking Windows Error Reports
rd /s /q "C:\ProgramData\Microsoft\Windows\WER\ReportQueue" 2>nul
rd /s /q "C:\ProgramData\Microsoft\Windows\WER\ReportArchive" 2>nul

:: Restart Explorer
echo.
echo ♻️ Restarting Explorer...
start explorer.exe

echo.
echo ✅ DONE: All non-critical junk destroyed.
echo 🚫 No browsers touched. No personal files touched. No settings touched.
pause
