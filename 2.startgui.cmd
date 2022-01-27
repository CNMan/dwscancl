@echo off
sc start DrWebAVService
sc start DrWebEngine
ping -n 60 127.0.0.1 > nul
start dwscanner.exe
