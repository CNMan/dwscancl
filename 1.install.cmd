@echo off
wget --append-output=installlog.txt --no-verbose -N --no-if-modified-since --header "Host: update.geo.drweb.com" --header "User-Agent: DrWebUpdate-12.0.42.10211 (windows: 5.1.2600)" --header "Accept: */*" --header "X-DrWeb-KeyNumber: 0148444153" --header "X-DrWeb-Validate: 2ae7d8dcbd045601ad050ee06da60484" --header "X-DrWeb-SysHash: C7B5A8334AF24F3CF842371701E76DD1" --header "Cache-Control: no-cache" --header "Pragma: no-cache" --header "Connection: keep-alive" --no-cookies -P baserepo -i dl1250
7z x baserepo\*.lzma
sc create DrWebAVService binpath= "e:\GitHub\drweb\dwscancl\dwservice.exe" start= demand
sc create DrWebEngine binpath= "e:\GitHub\drweb\dwscancl\dwengine.exe" start= demand
sc start DrWebAVService
sc start DrWebEngine
ping -n 60 127.0.0.1 > nul
pause
