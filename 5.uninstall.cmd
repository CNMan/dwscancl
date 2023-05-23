@echo off
sc stop DrWebAVService
sc stop DrWebEngine
TASKKILL /IM drwupsrv.exe /F
TASKKILL /IM dwarkdaemon.exe /F
TASKKILL /IM dwengine.exe /F
TASKKILL /IM dwqrui.exe /F
TASKKILL /IM dwscancl.exe /F
TASKKILL /IM dwscanner.exe /F
TASKKILL /IM dwservice.exe /F
TASKKILL /IM dwsewsc.exe /F
TASKKILL /IM dwwatcher.exe /F
ping -n 60 127.0.0.1 > nul
sc delete DrWebAVService
sc delete DrWebEngine
reg delete "HKEY_LOCAL_MACHINE\SOFTWARE\Doctor Web" /f
reg delete "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\DrWebAVService" /f
reg delete "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\DrWebEngine" /f
reg delete "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\DrWebFwSvc" /f
reg delete "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\DrWebLwf" /f
pause
