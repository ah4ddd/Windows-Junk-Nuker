@echo off
cls
echo 🔥 WINDOWS JUNK CLEANER: Brutal Mode
timeout /t 1 >nul

:: Kill Explorer to unlock some temp files
taskkill /f /im explorer.exe >nul 2>&1

:: Clear user temp
echo 💥 Clearing %TEMP%
rd /s /q %TEMP%
mkdir %TEMP%

:: Clear Windows temp
echo 💥 Clearing C:\Windows\Temp
rd /s /q C:\Windows\Temp
mkdir C:\Windows\Temp

:: Clear Prefetch
echo 💥 Clearing C:\Windows\Prefetch
rd /s /q C:\Windows\Prefetch
mkdir C:\Windows\Prefetch

:: Clear Recycle Bin
echo 💥 Emptying Recycle Bin
rd /s /q %systemdrive%\$Recycle.Bin

:: Clear Windows log files
echo 💥 Clearing log files
for /r C:\Windows %%G in (*.log) do del "%%G" /f /q >nul 2>&1

:: Clear Windows Error Reports
echo 💥 Clearing Error Reports
rd /s /q C:\ProgramData\Microsoft\Windows\WER\ReportQueue
rd /s /q C:\ProgramData\Microsoft\Windows\WER\ReportArchive

:: Restart Explorer
start explorer.exe

echo ✅ All non-critical junk destroyed. No browsers touched. No system settings touched.
pause
