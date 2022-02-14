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
wget --append-output=updatelog.txt --no-verbose -N --no-if-modified-since --header "Host: update.geo.drweb.com" --header "User-Agent: DrWebUpdate-12.0.50.02100 (windows: 5.1.2600)" --header "Accept: */*" --header "X-DrWeb-KeyNumber: 0148784619" --header "X-DrWeb-Validate: 83b9f510627c05c0afcb5be9e1b46559" --header "X-DrWeb-SysHash: C7B5A8334AF24F3CF842371701E76DD1" --header "Cache-Control: no-cache" --header "Pragma: no-cache" --header "Connection: keep-alive" --no-cookies -P baserepo -i dl1250
7z x baserepo\*.lzma -y
echo virus database update has been completed
pause
cmd /K mode con cols=100 lines=50
