@echo off
wget --append-output=installlog.txt --no-verbose -N --no-if-modified-since --header "Host: update.geo.drweb.com" --header "User-Agent: DrWebUpdate-12.0.50.02100 (windows: 5.1.2600)" --header "Accept: */*" --header "X-DrWeb-KeyNumber: 0148784619" --header "X-DrWeb-Validate: 83b9f510627c05c0afcb5be9e1b46559" --header "X-DrWeb-SysHash: C7B5A8334AF24F3CF842371701E76DD1" --header "Cache-Control: no-cache" --header "Pragma: no-cache" --header "Connection: keep-alive" --no-cookies -P baserepo -i dl1250
7z x baserepo\*.lzma
sc create DrWebAVService binpath= "e:\GitHub\drweb\dwscancl\dwservice.exe" start= demand
sc create DrWebEngine binpath= "e:\GitHub\drweb\dwscancl\dwengine.exe" start= demand
sc start DrWebAVService
sc start DrWebEngine
ping -n 60 127.0.0.1 > nul
pause
