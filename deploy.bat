set PATH=%PATH%;C:\Hugo\bin
hugo
xcopy c:\Hugo\cec\public\* c:\remote\ubcchemecar.github.io /s /i /y
@echo off
set /p msg="Enter msg: "
@echo on
git add .
git commit -am "%msg%"
git push origin master
git -C "C:\remote\ubcchemecar.github.io" add .
git -C "C:\remote\ubcchemecar.github.io" commit -am "%msg%"
git -C "C:\remote\ubcchemecar.github.io" push origin master