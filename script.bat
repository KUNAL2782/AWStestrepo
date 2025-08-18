@echo off
:: Install IIS Web Server
powershell -Command "Add-WindowsFeature Web-Server"

:: Start IIS
net start w3svc

:: Write a test index.html file
echo Hello from CodeDeploy on Windows (ap-south-1)! > C:\inetpub\wwwroot\index.html
