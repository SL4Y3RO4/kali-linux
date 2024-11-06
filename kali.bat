@echo off
title kali linux
setlocal enabledelayedexpansion
chcp 65001 > nul

:main
echo [34m╔══[91m([0m%userprofile%@kali[91m)[0m[34m-[0m[91m[[0m%cd%[91m][0m[0m
set /p w="[34m╚══[91m#[0m [32m

%w%

if /I "%w%" EQU "cat" ( type )

if /I "%w%" EQU "clear" ( cls ) 

if /I "%w%" EQU "ls" ( dir ) 

if /I "%w%" EQU "ifconfig" ( goto ifconfig ) 

if /I "%w%" EQU "nano" ( goto nano )

if /I "%w%" EQU "-help" ( goto help )

if /I "%w%" EQU "h" ( goto help )

if /I "%w%" EQU "apt install python3" ( goto python-config ) 

if /I "%w%" EQU "neofetch" ( goto neofetching )

if /I "%w%" EQU "nc" ( goto nc-listener )

if /I "%w%" EQU "apt install netcat" ( goto nc-config )

if /I "%w%" EQU "apt install nmap" ( goto nmap ) 

if /I "%w%" EQU "apt install hydra" ( goto hydra-config )

if /I "%w%" EQU "reboot" ( goto rebooting )

if /I "%w%" EQU "bruteforce" ( goto bruteforce ) 

if /I "%w%" EQU "shutdown now" ( goto shut ) 

if /I "%w%" EQU "apt install notpadpp" ( goto notpadpp-config )

if /I "%w%" EQU "apt install msfconsole" ( goto metasploit-config )

if /I "%w%" EQU "msfconsole" ( goto msfconsole )

if /I "%w%" EQU "bye" ( goto goodbye )

goto main


:nano
cls
for /L %%a in (1,1,12) do (

echo ~

)

set /p file="filename>"

:loop

set /p write=">

echo "%write%" >> %file%

if %write% = '' ( goto endfile )

goto loop

:endfile

set /p option=":"

if %option% = xq ( goto main )

pause > nul

:help
cls
echo [34mkali linux[0m command lines
echo.
echo 1:[92mls[0m
echo 2:[92mhelp[0m
echo 3:[92mclear[0m
echo 4:[92mifconfig[0m
echo 5:[92mnano[0m
echo 6:[92mneofetch[0m
echo 7:[92mreboot[0m
echo 8:[92mapt install netcat[0m
echo 9:[92mapt install hydra[0m
echo 10:[92mapt install python3[0m
echo 11:[92mapt install msfconsole[0m
echo 12:[92mmsfconsole[0m
echo 13:[92mbye[0m
echo 14:[92mshutdown now[0m
pause > nul
goto main

:nc-config
curl https://nmap.org/dist/nmap-7.95-setup.exe -o nmap-7.95-setup.exe.exe 
nmap-7.95-setup.exe 
goto main

:hydra-config
curl -L -o hydra.zip https://github.com/maaaaz/thc-hydra-windows/archive/master.zip
tar -xf hydra.zip
goto main

:python-config
curl https://www.python.org/ftp/python/3.13.0/python-3.13.0-amd64.exe -o python-3.13.0-amd64.exe
python-3.13.0-amd64.exe
goto main

:rebooting
shutdown /r /t 0 

:nmap
curl https://nmap.org/dist/nmap-7.95-setup.exe -o nmap-7.95-setup.exe.exe 
nmap-7.95-setup.exe 
goto main


:neofetching
cls 
echo [36m  #[0m
echo  [36m##      ##[0m
echo [36m###     ##[0m
echo [36m###    ##[0m
echo [36m###   ##[0m
echo [36m###  ##[0m
echo [36m### ##[0m
echo [36m#####[0m
echo [36m### ##[0m
echo [36m###  ##[0m
echo [36m###   ##[0m
echo [36m###    ##[0m
echo [36m###     ##[0m
systeminfo | find "Host Name"
systeminfo | find "OS"
systeminfo | find "[01]"
systeminfo | find "[02]"
echo.
pause > nul
goto main


:ifconfig
ipconfig | find "IPv4"
ipconfig | find "IPv6"
pause > nul
goto main


:bruteforce
cls
cd thc-hydra-windows-master

set /p username="username>"
set /p hostname="hostname>"
set /p wordlist="wordlist>"
set /p wordlist="protocol>"

hydra -l %username% -P %wordlist% %hostname% %protocol%  
goto main


:nc-listener
cls
cd C:\Program Files (x86)\Nmap
ncat -lvp %RANDOM%
goto main


:shut
cd /
shutdown /s /t 2
tree

:notpadpp-config
curl https://github.com/notepad-plus-plus/notepad-plus-plus/releases/download/v8.7.1/npp.8.7.1.Installer.x64.exe -o notpadpp.exe
notpadpp.exe
goto main

:metasploit-config
curl https://downloads.metasploit.com/data/releases/metasploit-latest-windows-x64-installer.exe -o msfconsole-installer.exe
msfconsole-installer.exe
goto main


:msfconsole
cd C:\metasploit
console.bat
goto main


:goodbye
cls
echo BYE!
timeout /t 2 > nul
exit