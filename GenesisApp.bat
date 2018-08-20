@echo off
if not exist "GenesisFiles" mkdir GenesisFiles
if not exist "GenesisFiles\Saves" mkdir GenesisFiles\Saves
if not exist "GenesisFiles\Apps" mkdir GenesisFiles\Apps
if not exist "GenesisFiles\Addons" mkdir GenesisFiles\Addons
if not exist "GenesisFiles\Saves\Voice" mkdir GenesisFiles\Saves\Voice
title Genesis
color 0A
set pass=Pending
set name=Pending
set warn=1
set coco=0A
set pre=C:			
set hage=0
set age=Pending
set year=Pending
set teachw=0
set learnw=0
set cuser=0
(
set /p username=
set /p cuser=
) < "GenesisFiles\Saves\Accounts\cuset.sav"
if "%cuser%"=="0" goto RLRLRL
if "%cuser%"=="1" goto lpuser
:RLRES
set pass=Pending
set name=Pending
set warn=1
set coco=0A
set pre=C:			
set hage=0
set age=Pending
set year=Pending
set teachw=0
set learnw=0
set cuser=0
:RLRLRL
mode con: cols=61 lines=8
set pass=Pending
set name=Pending
set warn=1
set coco=0A
set pre=C:			
set hage=0
set age=Pending
set year=Pending
set teachw=0
set learnw=0
title Genesis
tasklist /fi "imagename eq wscript.exe" |find ":" >nul
if errorlevel 1 taskkill /f /im "wscript.exe" >nul
set speech=Would you like to create an account or login
if not exist "GenesisFiles" mkdir GenesisFiles
if not exist "GenesisFiles\Saves" mkdir GenesisFiles\Saves
if not exist "GenesisFiles\Saves\Voice" mkdir GenesisFiles\Saves\Voice
echo ' > "GenesisFiles\Saves\Voice\%speech%.vbs"
echo set speech = Wscript.CreateObject("SAPI.spVoice") >> "GenesisFiles\Saves\Voice\%speech%.vbs"
echo set speech.Voice = speech.GetVoices.Item(1) >> "GenesisFiles\Saves\Voice\%speech%.vbs"
echo speech.speak "%speech%" >> "GenesisFiles\Saves\Voice\%speech%.vbs"
start "%speech%" "GenesisFiles\Saves\Voice\%speech%.vbs"
:RLRLRL2
cls
set answer=
echo Would you like to Create an account or Login?
echo (Enter c to create account or l to login.)
echo (Or enter e to exit.)
echo.
set /p answer=C/L/E:
if "%answer%"=="c" goto register
if "%answer%"=="C" goto register
if "%answer%"=="l" goto login
if "%answer%"=="L" goto login
if "%answer%"=="e" goto lexit
goto RLRLRL2
:lexit
tasklist /fi "imagename eq wscript.exe" |find ":" >nul
if errorlevel 1 taskkill /f /im "wscript.exe" >nul
set speech=See you later!
if not exist "GenesisFiles" mkdir GenesisFiles
if not exist "GenesisFiles\Saves" mkdir GenesisFiles\Saves
if not exist "GenesisFiles\Saves\Voice" mkdir GenesisFiles\Saves\Voice
echo ' > "GenesisFiles\Saves\Voice\%speech%.vbs"
echo set speech = Wscript.CreateObject("SAPI.spVoice") >> "GenesisFiles\Saves\Voice\%speech%.vbs"
echo set speech.Voice = speech.GetVoices.Item(1) >> "GenesisFiles\Saves\Voice\%speech%.vbs"
echo speech.speak "%speech%" >> "GenesisFiles\Saves\Voice\%speech%.vbs"
start "%speech%" "GenesisFiles\Saves\Voice\%speech%.vbs"
echo See you later!
echo.
timeout 2 >nul
rmdir /s /q "GenesisFiles\Saves\Voice"
exit
:register
tasklist /fi "imagename eq wscript.exe" |find ":" >nul
if errorlevel 1 taskkill /f /im "wscript.exe" >nul
set speech=What would you like your username to be
if not exist "GenesisFiles" mkdir GenesisFiles
if not exist "GenesisFiles\Saves" mkdir GenesisFiles\Saves
if not exist "GenesisFiles\Saves\Voice" mkdir GenesisFiles\Saves\Voice
echo ' > "GenesisFiles\Saves\Voice\%speech%.vbs"
echo set speech = Wscript.CreateObject("SAPI.spVoice") >> "GenesisFiles\Saves\Voice\%speech%.vbs"
echo set speech.Voice = speech.GetVoices.Item(1) >> "GenesisFiles\Saves\Voice\%speech%.vbs"
echo speech.speak "%speech%" >> "GenesisFiles\Saves\Voice\%speech%.vbs"
start "%speech%" "GenesisFiles\Saves\Voice\%speech%.vbs"
set username=Enter
cls
echo What would you like your username to be?
echo (You can't use question marks.)
echo Or enter b to go back.
echo.
set /p username=Username:
set username=%username:?=%
set username=%username::=%
if "%username%"=="b" goto RLRLRL2
if "%username%"=="B" goto RLRLRL2
if "%username%"=="cuset" goto register
if "%username%"=="Cuset" goto register
if "%username%"=="CUSET" goto register
if not exist "GenesisFiles\Saves\Accounts\%username%.sav" goto register2
cls
tasklist /fi "imagename eq wscript.exe" |find ":" >nul
if errorlevel 1 taskkill /f /im "wscript.exe" >nul
set speech=The username %username%, is already taken.
if not exist "GenesisFiles" mkdir GenesisFiles
if not exist "GenesisFiles\Saves" mkdir GenesisFiles\Saves
if not exist "GenesisFiles\Saves\Voice" mkdir GenesisFiles\Saves\Voice
echo ' > "GenesisFiles\Saves\Voice\%speech%.vbs"
echo set speech = Wscript.CreateObject("SAPI.spVoice") >> "GenesisFiles\Saves\Voice\%speech%.vbs"
echo set speech.Voice = speech.GetVoices.Item(1) >> "GenesisFiles\Saves\Voice\%speech%.vbs"
echo speech.speak "%speech%" >> "GenesisFiles\Saves\Voice\%speech%.vbs"
start "%speech%" "GenesisFiles\Saves\Voice\%speech%.vbs"
echo The username: %username%, is already taken.
echo.
timeout 3 >nul
goto RLRLRL
:register2
tasklist /fi "imagename eq wscript.exe" |find ":" >nul
if errorlevel 1 taskkill /f /im "wscript.exe" >nul
set speech=What would you like your password to be
if not exist "GenesisFiles" mkdir GenesisFiles
if not exist "GenesisFiles\Saves" mkdir GenesisFiles\Saves
if not exist "GenesisFiles\Saves\Voice" mkdir GenesisFiles\Saves\Voice
echo ' > "GenesisFiles\Saves\Voice\%speech%.vbs"
echo set speech = Wscript.CreateObject("SAPI.spVoice") >> "GenesisFiles\Saves\Voice\%speech%.vbs"
echo set speech.Voice = speech.GetVoices.Item(1) >> "GenesisFiles\Saves\Voice\%speech%.vbs"
echo speech.speak "%speech%" >> "GenesisFiles\Saves\Voice\%speech%.vbs"
start "%speech%" "GenesisFiles\Saves\Voice\%speech%.vbs"
set pass=Enter
cls
echo What would you like your password to be?
echo (Or enter b to go back.)
echo.
set /p pass=Password:
if "%pass%"=="b" goto register
if "%pass%"=="B" goto register
if "%pass%"=="m" goto register2
cls
if not exist "GenesisFiles" mkdir GenesisFiles
if not exist "GenesisFiles\Saves" mkdir GenesisFiles\Saves
if not exist "GenesisFiles\Saves\Accounts" mkdir GenesisFiles\Saves\Accounts
(
echo %pass%
echo %name%
echo %warn%
echo %coco%
echo %pre%
echo %hage%
echo %age%
echo %year%
echo %teachw%
echo %learnw%
) > "GenesisFiles\Saves\Accounts\%username%.sav"
tasklist /fi "imagename eq wscript.exe" |find ":" >nul
if errorlevel 1 taskkill /f /im "wscript.exe" >nul
set speech=Account successfully created!
if not exist "GenesisFiles" mkdir GenesisFiles
if not exist "GenesisFiles\Saves" mkdir GenesisFiles\Saves
if not exist "GenesisFiles\Saves\Voice" mkdir GenesisFiles\Saves\Voice
echo ' > "GenesisFiles\Saves\Voice\%speech%.vbs"
echo set speech = Wscript.CreateObject("SAPI.spVoice") >> "GenesisFiles\Saves\Voice\%speech%.vbs"
echo set speech.Voice = speech.GetVoices.Item(1) >> "GenesisFiles\Saves\Voice\%speech%.vbs"
echo speech.speak "%speech%" >> "GenesisFiles\Saves\Voice\%speech%.vbs"
start "%speech%" "GenesisFiles\Saves\Voice\%speech%.vbs"
cls
echo Account successfully created!
echo.
timeout 3 >nul
goto RLRLRL2
:login
tasklist /fi "imagename eq wscript.exe" |find ":" >nul
if errorlevel 1 taskkill /f /im "wscript.exe" >nul
set speech=What is your username
if not exist "GenesisFiles" mkdir GenesisFiles
if not exist "GenesisFiles\Saves" mkdir GenesisFiles\Saves
if not exist "GenesisFiles\Saves\Voice" mkdir GenesisFiles\Saves\Voice
echo ' > "GenesisFiles\Saves\Voice\%speech%.vbs"
echo set speech = Wscript.CreateObject("SAPI.spVoice") >> "GenesisFiles\Saves\Voice\%speech%.vbs"
echo set speech.Voice = speech.GetVoices.Item(1) >> "GenesisFiles\Saves\Voice\%speech%.vbs"
echo speech.speak "%speech%" >> "GenesisFiles\Saves\Voice\%speech%.vbs"
start "%speech%" "GenesisFiles\Saves\Voice\%speech%.vbs"
cls
set username=Enter
echo What is your username?
echo.
set /p username=Username:
set username=%username:?=%
set username=%username::=%
if "%username%"=="cuset" goto NSU
if "%username%"=="CUSET" goto NSU
if not exist "GenesisFiles\Saves\Accounts\%username%.sav" goto NSU 
cls
(
set /p pass=
set /p name=
set /p warn=
set /p coco=
set /p pre=
set /p hage=
set /p age=
set /p year=
set /p teachw=
set /p learnw=
) < "GenesisFiles\Saves\Accounts\%username%.sav"
goto login2
:NSU
tasklist /fi "imagename eq wscript.exe" |find ":" >nul
if errorlevel 1 taskkill /f /im "wscript.exe" >nul
set speech=The username %username%, does not exist.
if not exist "GenesisFiles" mkdir GenesisFiles
if not exist "GenesisFiles\Saves" mkdir GenesisFiles\Saves
if not exist "GenesisFiles\Saves\Voice" mkdir GenesisFiles\Saves\Voice
echo ' > "GenesisFiles\Saves\Voice\%speech%.vbs"
echo set speech = Wscript.CreateObject("SAPI.spVoice") >> "GenesisFiles\Saves\Voice\%speech%.vbs"
echo set speech.Voice = speech.GetVoices.Item(1) >> "GenesisFiles\Saves\Voice\%speech%.vbs"
echo speech.speak "%speech%" >> "GenesisFiles\Saves\Voice\%speech%.vbs"
start "%speech%" "GenesisFiles\Saves\Voice\%speech%.vbs"
cls
echo The username: %username%, does not exist.
echo.
timeout 5 >nul
goto RLRLRL2
:login2
tasklist /fi "imagename eq wscript.exe" |find ":" >nul
if errorlevel 1 taskkill /f /im "wscript.exe" >nul
set speech=Enter the password
if not exist "GenesisFiles" mkdir GenesisFiles
if not exist "GenesisFiles\Saves" mkdir GenesisFiles\Saves
if not exist "GenesisFiles\Saves\Voice" mkdir GenesisFiles\Saves\Voice
echo ' > "GenesisFiles\Saves\Voice\%speech%.vbs"
echo set speech = Wscript.CreateObject("SAPI.spVoice") >> "GenesisFiles\Saves\Voice\%speech%.vbs"
echo set speech.Voice = speech.GetVoices.Item(1) >> "GenesisFiles\Saves\Voice\%speech%.vbs"
echo speech.speak "%speech%" >> "GenesisFiles\Saves\Voice\%speech%.vbs"
start "%speech%" "GenesisFiles\Saves\Voice\%speech%.vbs"
cls
echo Enter the password:
echo.
set /p apass=Password:
if "%apass%"=="%pass%" goto LS
goto IP
:IP
tasklist /fi "imagename eq wscript.exe" |find ":" >nul
if errorlevel 1 taskkill /f /im "wscript.exe" >nul
set speech=Incorrect password!
if not exist "GenesisFiles" mkdir GenesisFiles
if not exist "GenesisFiles\Saves" mkdir GenesisFiles\Saves
if not exist "GenesisFiles\Saves\Voice" mkdir GenesisFiles\Saves\Voice
echo ' > "GenesisFiles\Saves\Voice\%speech%.vbs"
echo set speech = Wscript.CreateObject("SAPI.spVoice") >> "GenesisFiles\Saves\Voice\%speech%.vbs"
echo set speech.Voice = speech.GetVoices.Item(1) >> "GenesisFiles\Saves\Voice\%speech%.vbs"
echo speech.speak "%speech%" >> "GenesisFiles\Saves\Voice\%speech%.vbs"
start "%speech%" "GenesisFiles\Saves\Voice\%speech%.vbs"
cls
echo Incorrect password!
echo.
timeout 2 >nul
goto RLRLRL2
:LS
tasklist /fi "imagename eq wscript.exe" |find ":" >nul
if errorlevel 1 taskkill /f /im "wscript.exe" >nul
set speech=Login successful!
if not exist "GenesisFiles" mkdir GenesisFiles
if not exist "GenesisFiles\Saves" mkdir GenesisFiles\Saves
if not exist "GenesisFiles\Saves\Voice" mkdir GenesisFiles\Saves\Voice
echo ' > "GenesisFiles\Saves\Voice\%speech%.vbs"
echo set speech = Wscript.CreateObject("SAPI.spVoice") >> "GenesisFiles\Saves\Voice\%speech%.vbs"
echo set speech.Voice = speech.GetVoices.Item(1) >> "GenesisFiles\Saves\Voice\%speech%.vbs"
echo speech.speak "%speech%" >> "GenesisFiles\Saves\Voice\%speech%.vbs"
start "%speech%" "GenesisFiles\Saves\Voice\%speech%.vbs"
cls
echo Login successful!
echo.
timeout 2 >nul
(
set /p pass=
set /p name=
set /p warn=
set /p coco=
set /p pre=
set /p hage=
set /p age=
set /p year=
set /p teachw=
set /p learnw=
) < "GenesisFiles\Saves\Accounts\%username%.sav"
set cuser=1
(
echo %username%
echo %cuser%
) > GenesisFiles\Saves\Accounts\cuset.sav
goto Warning
:lpuser
if not exist "GenesisFiles\Saves\Accounts\%username%.sav" goto ERRORNU
(
set /p pass=
set /p name=
set /p warn=
set /p coco=
set /p pre=
set /p hage=
set /p age=
set /p year=
set /p teachw=
set /p learnw=
) < "GenesisFiles\Saves\Accounts\%username%.sav"
goto Warning
:ERRORNU
tasklist /fi "imagename eq wscript.exe" |find ":" >nul
if errorlevel 1 taskkill /f /im "wscript.exe" >nul
set speech=The username, %username%, was not found in the Accounts directory.
if not exist "GenesisFiles" mkdir GenesisFiles
if not exist "GenesisFiles\Saves" mkdir GenesisFiles\Saves
if not exist "GenesisFiles\Saves\Voice" mkdir GenesisFiles\Saves\Voice
echo ' > "GenesisFiles\Saves\Voice\%speech%.vbs"
echo set speech = Wscript.CreateObject("SAPI.spVoice") >> "GenesisFiles\Saves\Voice\%speech%.vbs"
echo set speech.Voice = speech.GetVoices.Item(1) >> "GenesisFiles\Saves\Voice\%speech%.vbs"
echo speech.speak "%speech%" >> "GenesisFiles\Saves\Voice\%speech%.vbs"
start "%speech%" "GenesisFiles\Saves\Voice\%speech%.vbs"
mode con: cols=61 lines=8
cls
echo The username, %username%, was not found in the
echo 'Accounts' directory.
echo.
timeout 7 >nul
set cuser=0
set username=Pending
if not exist "GenesisFiles" mkdir GenesisFiles
if not exist "GenesisFiles\Saves" mkdir GenesisFiles\Saves
if not exist "GenesisFiles\Saves\Accounts" mkdir GenesisFiles\Saves\Accounts
(
echo %username%
echo %cuser%
) > "GenesisFiles\Saves\Accounts\cuset.sav"
goto RLRLRL
:Warning
cls
if "%warn%"=="0" goto !clear
if "%warn%"=="1" goto :R 
:!reset
rmdir /s /q GenesisFiles\Saves\Voice
mode con: cols=61 lines=8
set name=Pending
set warn=1
set pre=C:
set coco=0A
set hage=0
set age=Pending
set year=Pending
set teachw=0
set learnw=0
goto makesavfiler
:makesavfiler
if not exist "GenesisFiles" mkdir GenesisFiles
if not exist "GenesisFiles\Saves" mkdir GenesisFiles\Saves
if not exist "GenesisFiles\Saves\Accounts" mkdir GenesisFiles\Saves\Accounts
cls
(
echo %pass%
echo %name%
echo %warn%
echo %coco%
echo %pre%
echo %hage%
echo %age%
echo %year%
echo %teachw%
echo %learnw%
) > "GenesisFiles\Saves\Accounts\%username%.sav"
:R
tasklist /fi "imagename eq wscript.exe" |find ":" >nul
if errorlevel 1 taskkill /f /im "wscript.exe" >nul
set speech=Whenever the program pauses, press any key to continue!
if not exist "GenesisFiles" mkdir GenesisFiles
if not exist "GenesisFiles\Saves" mkdir GenesisFiles\Saves
if not exist "GenesisFiles\Saves\Voice" mkdir GenesisFiles\Saves\Voice
echo ' > "GenesisFiles\Saves\Voice\%speech%.vbs"
echo set speech = Wscript.CreateObject("SAPI.spVoice") >> "GenesisFiles\Saves\Voice\%speech%.vbs"
echo set speech.Voice = speech.GetVoices.Item(1) >> "GenesisFiles\Saves\Voice\%speech%.vbs"
echo speech.speak "%speech%" >> "GenesisFiles\Saves\Voice\%speech%.vbs"
start "%speech%" "GenesisFiles\Saves\Voice\%speech%.vbs"
set coco=0A
color %coco%
title Genesis
cls
echo Whenever the program pauses, press any key to continue!
echo.
timeout 4 >nul
:NameSelect
tasklist /fi "imagename eq wscript.exe" |find ":" >nul
if errorlevel 1 taskkill /f /im "wscript.exe" >nul
set speech=What is your name
if not exist "GenesisFiles" mkdir GenesisFiles
if not exist "GenesisFiles\Saves" mkdir GenesisFiles\Saves
if not exist "GenesisFiles\Saves\Voice" mkdir GenesisFiles\Saves\Voice
echo ' > "GenesisFiles\Saves\Voice\%speech%.vbs"
echo set speech = Wscript.CreateObject("SAPI.spVoice") >> "GenesisFiles\Saves\Voice\%speech%.vbs"
echo set speech.Voice = speech.GetVoices.Item(1) >> "GenesisFiles\Saves\Voice\%speech%.vbs"
echo speech.speak "%speech%" >> "GenesisFiles\Saves\Voice\%speech%.vbs"
start "%speech%" "GenesisFiles\Saves\Voice\%speech%.vbs"
set name=Enter
color %coco%
cls
echo What is your name?
echo.
set /p name=Name:
set namef=%name%
set namef=%namef:?=%
set namef=%namef::=%
if "%name%"=="m" goto NameSelect
if "%name%"=="M" goto NameSelect
tasklist /fi "imagename eq wscript.exe" |find ":" >nul
if errorlevel 1 taskkill /f /im "wscript.exe" >nul
set speech=Hello %namef%! I am Genesis, your own computer assistant!
if not exist "GenesisFiles" mkdir GenesisFiles
if not exist "GenesisFiles\Saves" mkdir GenesisFiles\Saves
if not exist "GenesisFiles\Saves\Voice" mkdir GenesisFiles\Saves\Voice
echo ' > "GenesisFiles\Saves\Voice\%speech%.vbs"
echo set speech = Wscript.CreateObject("SAPI.spVoice") >> "GenesisFiles\Saves\Voice\%speech%.vbs"
echo set speech.Voice = speech.GetVoices.Item(1) >> "GenesisFiles\Saves\Voice\%speech%.vbs"
echo speech.speak "%speech%" >> "GenesisFiles\Saves\Voice\%speech%.vbs"
start "%speech%" "GenesisFiles\Saves\Voice\%speech%.vbs"
cls
echo Hello %name%! I am Genesis, your own computer assistant!
timeout 6 >nul
goto makessavfile
:makessavfile
if not exist "GenesisFiles" mkdir GenesisFiles
if not exist "GenesisFiles\Saves" mkdir GenesisFiles\Saves
if not exist "GenesisFiles\Saves\Accounts" mkdir GenesisFiles\Saves\Accounts
set warn=0
cls
(
echo %pass%
echo %name%
echo %warn%
echo %coco%
echo %pre%
echo %hage%
echo %age%
echo %year%
echo %teachw%
echo %learnw%
) > "GenesisFiles\Saves\Accounts\%username%.sav"
goto HELPR
:HELPR
tasklist /fi "imagename eq wscript.exe" |find ":" >nul
if errorlevel 1 taskkill /f /im "wscript.exe" >nul
set speech=Give me a command, or just talk to me. If you don't know the commands, type help. Example. How are you
if not exist "GenesisFiles" mkdir GenesisFiles
if not exist "GenesisFiles\Saves" mkdir GenesisFiles\Saves
if not exist "GenesisFiles\Saves\Voice" mkdir GenesisFiles\Saves\Voice
echo ' > "GenesisFiles\Saves\Voice\%speech%.vbs"
echo set speech = Wscript.CreateObject("SAPI.spVoice") >> "GenesisFiles\Saves\Voice\%speech%.vbs"
echo set speech.Voice = speech.GetVoices.Item(1) >> "GenesisFiles\Saves\Voice\%speech%.vbs"
echo speech.speak "%speech%" >> "GenesisFiles\Saves\Voice\%speech%.vbs"
start "%speech%" "GenesisFiles\Saves\Voice\%speech%.vbs"
color %coco%
cls
echo Give me a command, or just talk to me. If you don't know the
echo commands, type help.
echo Ex. How are you?
timeout 10 >nul
:!clear
rmdir /s /q "GenesisFiles\Saves\Voice"
tasklist /fi "imagename eq wscript.exe" |find ":" >nul
if errorlevel 1 taskkill /f /im "wscript.exe" >nul
set speech=Tell me something, or give me a command
if not exist "GenesisFiles" mkdir GenesisFiles
if not exist "GenesisFiles\Saves" mkdir GenesisFiles\Saves
if not exist "GenesisFiles\Saves\Voice" mkdir GenesisFiles\Saves\Voice
echo ' > "GenesisFiles\Saves\Voice\%speech%.vbs"
echo set speech = Wscript.CreateObject("SAPI.spVoice") >> "GenesisFiles\Saves\Voice\%speech%.vbs"
echo set speech.Voice = speech.GetVoices.Item(1) >> "GenesisFiles\Saves\Voice\%speech%.vbs"
echo speech.speak "%speech%" >> "GenesisFiles\Saves\Voice\%speech%.vbs"
start "%speech%" "GenesisFiles\Saves\Voice\%speech%.vbs"
mode con: cols=61 lines=60
color %coco%
cls
cls
ver
echo  (C)  Genesis (Version 2.2)
echo.
echo  This AI Bot is programmable/teachable.
echo  Version: 2.2
echo  Programmed by: ACA (Aiden Adams)
echo.
echo  Problems? Questions? Suggestions? Contact me at:
echo  PrinceJace777@gmail.com
echo.
echo =============================================================
echo.
echo.
echo Tell me something, or give me a command:
echo (Enter help for a list of commands.)
:Genesis
echo.
set crud=0
set answer=enter
set /p answer=To Genesis:
if "%answer%"==" " goto Genesis
set answerf=%answer%
set answer=%answer:?=%
set answer=%answer::=%
call :!%answer: =% 2>NUL
if %errorlevel% equ 0 goto Genesis
goto DNUT
:!enter
set speech=You can't just hit enter
tasklist /fi "imagename eq wscript.exe" |find ":" >nul
if errorlevel 1 taskkill /f /im "wscript.exe" >nul
if not exist "GenesisFiles" mkdir GenesisFiles
if not exist "GenesisFiles\Saves" mkdir GenesisFiles\Saves
if not exist "GenesisFiles\Saves\Voice" mkdir GenesisFiles\Saves\Voice
echo ' > "GenesisFiles\Saves\Voice\%speech%.vbs"
echo set speech = Wscript.CreateObject("SAPI.spVoice") >> "GenesisFiles\Saves\Voice\%speech%.vbs"
echo set speech.Voice = speech.GetVoices.Item(1) >> "GenesisFiles\Saves\Voice\%speech%.vbs"
echo speech.speak "%speech%" >> "GenesisFiles\Saves\Voice\%speech%.vbs"
start "%speech%" "GenesisFiles\Saves\Voice\%speech%.vbs"
echo You can't just hit enter...
goto Genesis
:DNUT
tasklist /fi "imagename eq wscript.exe" |find ":" >nul
if errorlevel 1 taskkill /f /im "wscript.exe" >nul
set speech=Sorry i do not understand %answer%, would you like to add a response to %answer%
if not exist "GenesisFiles" mkdir GenesisFiles
if not exist "GenesisFiles\Saves" mkdir GenesisFiles\Saves
if not exist "GenesisFiles\Saves\Voice" mkdir GenesisFiles\Saves\Voice
echo ' > "GenesisFiles\Saves\Voice\%speech%.vbs"
echo set speech = Wscript.CreateObject("SAPI.spVoice") >> "GenesisFiles\Saves\Voice\%speech%.vbs"
echo set speech.Voice = speech.GetVoices.Item(1) >> "GenesisFiles\Saves\Voice\%speech%.vbs"
echo speech.speak "%speech%" >> "GenesisFiles\Saves\Voice\%speech%.vbs"
start "%speech%" "GenesisFiles\Saves\Voice\%speech%.vbs"
echo Sorry, I do not understand,
echo %answerf%
echo (Any profanity related statements are not present.)
echo.
echo Would you like to add a response to:
echo %answerf%
echo.
:DNUTask
set line=0
set respchoice=Enter
set /p respchoice=Y/N:
if "%respchoice%"=="no" goto Genesis
if "%respchoice%"=="No" goto Genesis
if "%respchoice%"=="Yes" goto teachuserresponse
if "%respchoice%"=="yes" goto teachuserresponse
if "%respchoice%"=="n" goto Genesis
if "%respchoice%"=="N" goto Genesis
if "%respchoice%"=="Y" goto teachuserresponse
if "%respchoice%"=="y" goto teachuserresponse
echo.
goto DNUTask
:teachuserresponse
tasklist /fi "imagename eq wscript.exe" |find ":" >nul
if errorlevel 1 taskkill /f /im "wscript.exe" >nul
set speech=What do you want me to respond to %answer%
if not exist "GenesisFiles" mkdir GenesisFiles
if not exist "GenesisFiles\Saves" mkdir GenesisFiles\Saves
if not exist "GenesisFiles\Saves\Voice" mkdir GenesisFiles\Saves\Voice
echo ' > "GenesisFiles\Saves\Voice\%speech%.vbs"
echo set speech = Wscript.CreateObject("SAPI.spVoice") >> "GenesisFiles\Saves\Voice\%speech%.vbs"
echo set speech.Voice = speech.GetVoices.Item(1) >> "GenesisFiles\Saves\Voice\%speech%.vbs"
echo speech.speak "%speech%" >> "GenesisFiles\Saves\Voice\%speech%.vbs"
start "%speech%" "GenesisFiles\Saves\Voice\%speech%.vbs"
set resp=Enter
echo What do you want me to respond to
echo %answerf%
echo.
echo (Or enter m to go back to start, without making any response)
echo.
set /p resp=Response:
if "%resp%"=="m" goto Genesis
if "%resp%"=="M" goto Genesis
echo :!%answer: =% >> Genesis.bat
echo set resp=%resp% >> Genesis.bat
echo if not exist "GenesisFiles\Saves\Voice\%answer%.vbs" goto CResponseVoiceRestore >> Genesis.bat
echo start "%answer%" "GenesisFiles\Saves\Voice\%answer%.vbs" >> Genesis.bat
echo echo %resp% >> Genesis.bat
echo goto Genesis >> Genesis.bat
tasklist /fi "imagename eq wscript.exe" |find ":" >nul
if errorlevel 1 taskkill /f /im "wscript.exe" >nul
set speech=I now know what to respond to %answer%
if not exist "GenesisFiles" mkdir GenesisFiles
if not exist "GenesisFiles\Saves" mkdir GenesisFiles\Saves
if not exist "GenesisFiles\Saves\Voice" mkdir GenesisFiles\Saves\Voice
echo ' > "GenesisFiles\Saves\Voice\%speech%.vbs"
echo set speech = Wscript.CreateObject("SAPI.spVoice") >> "GenesisFiles\Saves\Voice\%speech%.vbs"
echo set speech.Voice = speech.GetVoices.Item(1) >> "GenesisFiles\Saves\Voice\%speech%.vbs"
echo speech.speak "%speech%" >> "GenesisFiles\Saves\Voice\%speech%.vbs"
start "%speech%" "GenesisFiles\Saves\Voice\%speech%.vbs"
echo I now know what to respond to
echo %answerf%
goto Genesis
:CResponseVoiceRestore
tasklist /fi "imagename eq wscript.exe" |find ":" >nul
if errorlevel 1 taskkill /f /im "wscript.exe" >nul
if not exist "GenesisFiles" mkdir GenesisFiles
if not exist "GenesisFiles\Saves" mkdir GenesisFiles\Saves
if not exist "GenesisFiles\Saves\Voice" mkdir GenesisFiles\Saves\Voice
echo ' > "GenesisFiles\Saves\Voice\%answer%.vbs"
echo set speech = Wscript.CreateObject("SAPI.spVoice") >> "GenesisFiles\Saves\Voice\%answer%.vbs"
echo set speech.Voice = speech.GetVoices.Item(1) >> "GenesisFiles\Saves\Voice\%answer%.vbs"
echo speech.speak "%resp%" >> "GenesisFiles\Saves\Voice\%answer%.vbs"
call :!%answer: =% 2>NUL
if %errorlevel% equ 0 goto Genesis
goto Genesis
:!help
tasklist /fi "imagename eq wscript.exe" |find ":" >nul
if errorlevel 1 taskkill /f /im "wscript.exe" >nul
set speech=Here's a list of commands
if not exist "GenesisFiles" mkdir GenesisFiles
if not exist "GenesisFiles\Saves" mkdir GenesisFiles\Saves
if not exist "GenesisFiles\Saves\Voice" mkdir GenesisFiles\Saves\Voice
echo ' > "GenesisFiles\Saves\Voice\%speech%.vbs"
echo set speech = Wscript.CreateObject("SAPI.spVoice") >> "GenesisFiles\Saves\Voice\%speech%.vbs"
echo set speech.Voice = speech.GetVoices.Item(1) >> "GenesisFiles\Saves\Voice\%speech%.vbs"
echo speech.speak "%speech%" >> "GenesisFiles\Saves\Voice\%speech%.vbs"
start "%speech%" "GenesisFiles\Saves\Voice\%speech%.vbs"
echo Here's a list of commands:
echo about - info about Genesis
echo change c - changes color of program
echo open app - opens application
echo open close - opens app and closes Genesis
echo open web - opens website
echo exit - exits program
echo clear - clears the screen
echo change pre - changes prefix (ex. C:)
echo change age - changes user's age
echo reset - resets program
echo shutdown - shuts down Computer
echo restart - restarts Computer
echo make txt file - makes a text file 
echo make bat file - makes a batch file
echo make sav file - makes a save file
echo change name - changes the user's name
echo calculate - calculates two numbers
echo reload - reloads Genesis
echo time - shows the time
echo date - shows the date
echo teach - teach Genesis about certain things
echo learn - Genesis teaches what you taught her
echo forget - make Genesis forget about something you taught her
echo shop - Genesis opens a shopping website
echo echo - Genesis repeats what you say
echo chat - opens up a chat room (Requires extra app)
echo change pass - changes the password of the current username
echo change uname - changes the username in use
echo logout - signs out of current username
echo del account - deletes the account in use
goto Genesis
:!exit
tasklist /fi "imagename eq wscript.exe" |find ":" >nul
if errorlevel 1 taskkill /f /im "wscript.exe" >nul
set speech=Are you sure that you want to exit
if not exist "GenesisFiles" mkdir GenesisFiles
if not exist "GenesisFiles\Saves" mkdir GenesisFiles\Saves
if not exist "GenesisFiles\Saves\Voice" mkdir GenesisFiles\Saves\Voice
echo ' > "GenesisFiles\Saves\Voice\%speech%.vbs"
echo set speech = Wscript.CreateObject("SAPI.spVoice") >> "GenesisFiles\Saves\Voice\%speech%.vbs"
echo set speech.Voice = speech.GetVoices.Item(1) >> "GenesisFiles\Saves\Voice\%speech%.vbs"
echo speech.speak "%speech%" >> "GenesisFiles\Saves\Voice\%speech%.vbs"
start "%speech%" "GenesisFiles\Saves\Voice\%speech%.vbs"
set answer=enter
echo Are you sure that you want to exit?
echo.
:exitask
set /p answer=Y/N:
if "%answer%"=="Yes" goto CExit
if "%answer%"=="No" goto Genesis
if "%answer%"=="yes" goto CExit
if "%answer%"=="no" goto Genesis
if "%answer%"=="Y" goto CExit
if "%answer%"=="N" goto Genesis
if "%answer%"=="y" goto CExit
if "%answer%"=="n" goto Genesis
echo.
goto existask
:CExit
tasklist /fi "imagename eq wscript.exe" |find ":" >nul
if errorlevel 1 taskkill /f /im "wscript.exe" >nul
set speech=See you later %name%!
if not exist "GenesisFiles" mkdir GenesisFiles
if not exist "GenesisFiles\Saves" mkdir GenesisFiles\Saves
if not exist "GenesisFiles\Saves\Voice" mkdir GenesisFiles\Saves\Voice
echo ' > "GenesisFiles\Saves\Voice\%speech%.vbs"
echo set speech = Wscript.CreateObject("SAPI.spVoice") >> "GenesisFiles\Saves\Voice\%speech%.vbs"
echo set speech.Voice = speech.GetVoices.Item(1) >> "GenesisFiles\Saves\Voice\%speech%.vbs"
echo speech.speak "%speech%" >> "GenesisFiles\Saves\Voice\%speech%.vbs"
start "%speech%" "GenesisFiles\Saves\Voice\%speech%.vbs"
echo See you later, %name%!
echo.
timeout 4 >nul
rmdir /s /q "GenesisFiles\Saves\Voice"
exit
:!openapp
if not exist "GenesisFiles" mkdir GenesisFiles
if not exist "GenesisFiles\Apps" mkdir GenesisFiles\Apps
tasklist /fi "imagename eq wscript.exe" |find ":" >nul
if errorlevel 1 taskkill /f /im "wscript.exe" >nul
set speech=Enter the app that you want to open, or enter b to go back.
if not exist "GenesisFiles" mkdir GenesisFiles
if not exist "GenesisFiles\Saves" mkdir GenesisFiles\Saves
if not exist "GenesisFiles\Saves\Voice" mkdir GenesisFiles\Saves\Voice
echo ' > "GenesisFiles\Saves\Voice\%speech%.vbs"
echo set speech = Wscript.CreateObject("SAPI.spVoice") >> "GenesisFiles\Saves\Voice\%speech%.vbs"
echo set speech.Voice = speech.GetVoices.Item(1) >> "GenesisFiles\Saves\Voice\%speech%.vbs"
echo speech.speak "%speech%" >> "GenesisFiles\Saves\Voice\%speech%.vbs"
start "%speech%" "GenesisFiles\Saves\Voice\%speech%.vbs"
set app=enter
echo Enter the app that you want to open, or enter b to go back.
echo (Any app you want opened has to be placed in the Apps folder)
echo (Apps folder is located in the GenesisFiles folder)
echo (Some things require extensions. ex. .txt)
echo.
set /p app=%pre%
if "%app%"=="b" goto Genesis
if "%app%"=="B" goto Genesis
start "%app%" "GenesisFiles\Apps\%app%"
echo.
goto Genesis
:!openweb
tasklist /fi "imagename eq wscript.exe" |find ":" >nul
if errorlevel 1 taskkill /f /im "wscript.exe" >nul
set speech=Enter the URL of the website that you want to be opened.
if not exist "GenesisFiles" mkdir GenesisFiles
if not exist "GenesisFiles\Saves" mkdir GenesisFiles\Saves
if not exist "GenesisFiles\Saves\Voice" mkdir GenesisFiles\Saves\Voice
echo ' > "GenesisFiles\Saves\Voice\%speech%.vbs"
echo set speech = Wscript.CreateObject("SAPI.spVoice") >> "GenesisFiles\Saves\Voice\%speech%.vbs"
echo set speech.Voice = speech.GetVoices.Item(1) >> "GenesisFiles\Saves\Voice\%speech%.vbs"
echo speech.speak "%speech%" >> "GenesisFiles\Saves\Voice\%speech%.vbs"
start "%speech%" "GenesisFiles\Saves\Voice\%speech%.vbs"
set web=enter
echo Enter the URL of the website you want to be opened. 
echo (ex. www.youtube.com)
echo (This will open in your Default Browser.)
echo Or enter b to go back.
echo.
set /p web=%pre%
if "%web%"=="b" goto Genesis
if "%web%"=="B" goto Genesis
start %web%
goto Genesis
:!changepre
tasklist /fi "imagename eq wscript.exe" |find ":" >nul
if errorlevel 1 taskkill /f /im "wscript.exe" >nul
set speech=What would you like to change the prefix into
if not exist "GenesisFiles" mkdir GenesisFiles
if not exist "GenesisFiles\Saves" mkdir GenesisFiles\Saves
if not exist "GenesisFiles\Saves\Voice" mkdir GenesisFiles\Saves\Voice
echo ' > "GenesisFiles\Saves\Voice\%speech%.vbs"
echo set speech = Wscript.CreateObject("SAPI.spVoice") >> "GenesisFiles\Saves\Voice\%speech%.vbs"
echo set speech.Voice = speech.GetVoices.Item(1) >> "GenesisFiles\Saves\Voice\%speech%.vbs"
echo speech.speak "%speech%" >> "GenesisFiles\Saves\Voice\%speech%.vbs"
start "%speech%" "GenesisFiles\Saves\Voice\%speech%.vbs"
echo Current prefix: %pre%
echo What would you like to change the prefix into?
echo (Example: C:)
echo Or enter m to go back. 
echo.
:changepreask
set fpre=Enter:
set /p fpre=Prefix:
set fpref=%fpre%
set fpref=%fpref:?=%
set fpref=%fpref::=%
if "%fpre%"=="m" goto Genesis
if "%fpre%"=="M" goto Genesis
if "%fpre%"=="%pre%" goto AUPRE
goto changep2
:AUPRE
tasklist /fi "imagename eq wscript.exe" |find ":" >nul
if errorlevel 1 taskkill /f /im "wscript.exe" >nul
set speech=The prefix is already set as %fpref%. Try again.
if not exist "GenesisFiles" mkdir GenesisFiles
if not exist "GenesisFiles\Saves" mkdir GenesisFiles\Saves
if not exist "GenesisFiles\Saves\Voice" mkdir GenesisFiles\Saves\Voice
echo ' > "GenesisFiles\Saves\Voice\%speech%.vbs"
echo set speech = Wscript.CreateObject("SAPI.spVoice") >> "GenesisFiles\Saves\Voice\%speech%.vbs"
echo set speech.Voice = speech.GetVoices.Item(1) >> "GenesisFiles\Saves\Voice\%speech%.vbs"
echo speech.speak "%speech%" >> "GenesisFiles\Saves\Voice\%speech%.vbs"
start "%speech%" "GenesisFiles\Saves\Voice\%speech%.vbs"
echo The prefix is already set as %pre%
echo Try again.
echo.
goto changepreask
:changep2
set pre=%fpre%
:makesavfile2
if not exist "GenesisFiles" mkdir GenesisFiles
if not exist "GenesisFiles\Saves" mkdir GenesisFiles\Saves
if not exist "GenesisFiles\Saves\Accounts" mkdir GenesisFiles\Saves\Accounts
(
echo %pass%
echo %name%
echo %warn%
echo %coco%
echo %pre%
echo %hage%
echo %age%
echo %year%
echo %teachw%
echo %learnw%
) > "GenesisFiles\Saves\Accounts\%username%.sav"
tasklist /fi "imagename eq wscript.exe" |find ":" >nul
if errorlevel 1 taskkill /f /im "wscript.exe" >nul
set speech=Prefix changed to %fpref%
if not exist "GenesisFiles" mkdir GenesisFiles
if not exist "GenesisFiles\Saves" mkdir GenesisFiles\Saves
if not exist "GenesisFiles\Saves\Voice" mkdir GenesisFiles\Saves\Voice
echo ' > "GenesisFiles\Saves\Voice\%speech%.vbs"
echo set speech = Wscript.CreateObject("SAPI.spVoice") >> "GenesisFiles\Saves\Voice\%speech%.vbs"
echo set speech.Voice = speech.GetVoices.Item(1) >> "GenesisFiles\Saves\Voice\%speech%.vbs"
echo speech.speak "%speech%" >> "GenesisFiles\Saves\Voice\%speech%.vbs"
start "%speech%" "GenesisFiles\Saves\Voice\%speech%.vbs"
echo Prefix changed to: %pre%
goto Genesis
:!changec
color %coco%
tasklist /fi "imagename eq wscript.exe" |find ":" >nul
if errorlevel 1 taskkill /f /im "wscript.exe" >nul
set speech=What would you like to change the color of the background into
if not exist "GenesisFiles" mkdir GenesisFiles
if not exist "GenesisFiles\Saves" mkdir GenesisFiles\Saves
if not exist "GenesisFiles\Saves\Voice" mkdir GenesisFiles\Saves\Voice
echo ' > "GenesisFiles\Saves\Voice\%speech%.vbs"
echo set speech = Wscript.CreateObject("SAPI.spVoice") >> "GenesisFiles\Saves\Voice\%speech%.vbs"
echo set speech.Voice = speech.GetVoices.Item(1) >> "GenesisFiles\Saves\Voice\%speech%.vbs"
echo speech.speak "%speech%" >> "GenesisFiles\Saves\Voice\%speech%.vbs"
start "%speech%" "GenesisFiles\Saves\Voice\%speech%.vbs"
echo What would you like to change the color of the background
echo into? (Example: 0A)
echo Or enter m to go go back.
echo 0 = Black  8 = Gray
echo 1 = Blue   9 = Light Blue
echo 2 = Green  A = Light Green
echo 3 = Aqua   B = Light Aqua
echo 4 = Red    C = Light Red
echo 5 = Purple D = Light Purple
echo 6 = Yellow E = Light Yellow
echo 7 = White  F = Bright White
echo.
:changecask
set chcogb=changecask
set co=enter
set /p co=Background color:
if "%co%"=="m" goto Genesis
if "%co%"=="M" goto Genesis
if "%co%"=="0" goto changeco2
if "%co%"=="1" goto changeco2
if "%co%"=="2" goto changeco2
if "%co%"=="3" goto changeco2
if "%co%"=="4" goto changeco2
if "%co%"=="5" goto changeco2
if "%co%"=="6" goto changeco2
if "%co%"=="7" goto changeco2
if "%co%"=="8" goto changeco2
if "%co%"=="9" goto changeco2
if "%co%"=="A" goto changeco2
if "%co%"=="B" goto changeco2
if "%co%"=="C" goto changeco2
if "%co%"=="D" goto changeco2
if "%co%"=="E" goto changeco2
if "%co%"=="F" goto changeco2
if "%co%"=="a" goto changeco2
if "%co%"=="b" goto changeco2
if "%co%"=="c" goto changeco2
if "%co%"=="d" goto changeco2
if "%co%"=="e" goto changeco2
if "%co%"=="f" goto changeco2
goto invcoco
:invcoco
tasklist /fi "imagename eq wscript.exe" |find ":" >nul
if errorlevel 1 taskkill /f /im "wscript.exe" >nul
set speech=That's an invalid interval!
if not exist "GenesisFiles" mkdir GenesisFiles
if not exist "GenesisFiles\Saves" mkdir GenesisFiles\Saves
if not exist "GenesisFiles\Saves\Voice" mkdir GenesisFiles\Saves\Voice
echo ' > "GenesisFiles\Saves\Voice\%speech%.vbs"
echo set speech = Wscript.CreateObject("SAPI.spVoice") >> "GenesisFiles\Saves\Voice\%speech%.vbs"
echo set speech.Voice = speech.GetVoices.Item(1) >> "GenesisFiles\Saves\Voice\%speech%.vbs"
echo speech.speak "%speech%" >> "GenesisFiles\Saves\Voice\%speech%.vbs"
start "%speech%" "GenesisFiles\Saves\Voice\%speech%.vbs"
echo That's an invalid interval!
echo.
goto %chcogb%
:changeco2
color %coco%
tasklist /fi "imagename eq wscript.exe" |find ":" >nul
if errorlevel 1 taskkill /f /im "wscript.exe" >nul
set speech=What would you like to change the color of the text into
if not exist "GenesisFiles" mkdir GenesisFiles
if not exist "GenesisFiles\Saves" mkdir GenesisFiles\Saves
if not exist "GenesisFiles\Saves\Voice" mkdir GenesisFiles\Saves\Voice
echo ' > "GenesisFiles\Saves\Voice\%speech%.vbs"
echo set speech = Wscript.CreateObject("SAPI.spVoice") >> "GenesisFiles\Saves\Voice\%speech%.vbs"
echo set speech.Voice = speech.GetVoices.Item(1) >> "GenesisFiles\Saves\Voice\%speech%.vbs"
echo speech.speak "%speech%" >> "GenesisFiles\Saves\Voice\%speech%.vbs"
start "%speech%" "GenesisFiles\Saves\Voice\%speech%.vbs"
echo What would you like to change the color of the text into?
echo (Example: 0A)
echo Or enter m to go back to start.
echo.
:changeco2ask
set co2=enter
set chcogb=changeco2ask
set /p co2=Text color:
if "%co2%"=="m" goto Genesis
if "%co2%"=="M" goto Genesis
if "%co2%"=="0" goto changecoc
if "%co2%"=="1" goto changecoc
if "%co2%"=="2" goto changecoc
if "%co2%"=="3" goto changecoc
if "%co2%"=="4" goto changecoc
if "%co2%"=="5" goto changecoc
if "%co2%"=="6" goto changecoc
if "%co2%"=="7" goto changecoc
if "%co2%"=="8" goto changecoc
if "%co2%"=="9" goto changecoc
if "%co2%"=="A" goto changecoc
if "%co2%"=="B" goto changecoc
if "%co2%"=="C" goto changecoc
if "%co2%"=="D" goto changecoc
if "%co2%"=="E" goto changecoc
if "%co2%"=="F" goto changecoc
if "%co2%"=="a" goto changecoc
if "%co2%"=="b" goto changecoc
if "%co2%"=="c" goto changecoc
if "%co2%"=="d" goto changecoc
if "%co2%"=="e" goto changecoc
if "%co2%"=="f" goto changecoc
goto invcoco
:changecoc
set cocot=%co%%co2%
color %coco%
if "%cocot%"=="00" goto invcoco2
if "%cocot%"=="11" goto invcoco2
if "%cocot%"=="22" goto invcoco2
if "%cocot%"=="33" goto invcoco2
if "%cocot%"=="44" goto invcoco2
if "%cocot%"=="55" goto invcoco2
if "%cocot%"=="66" goto invcoco2
if "%cocot%"=="77" goto invcoco2
if "%cocot%"=="88" goto invcoco2
if "%cocot%"=="99" goto invcoco2
if "%cocot%"=="AA" goto invcoco2
if "%cocot%"=="BB" goto invcoco2
if "%cocot%"=="CC" goto invcoco2
if "%cocot%"=="DD" goto invcoco2
if "%cocot%"=="EE" goto invcoco2
if "%cocot%"=="FF" goto invcoco2
if "%cocot%"=="aa" goto invcoco2
if "%cocot%"=="bb" goto invcoco2
if "%cocot%"=="cc" goto invcoco2
if "%cocot%"=="dd" goto invcoco2
if "%cocot%"=="ee" goto invcoco2
if "%cocot%"=="ff" goto invcoco2
if "%cocot%"=="Aa" goto invcoco2
if "%cocot%"=="Bb" goto invcoco2
if "%cocot%"=="Cc" goto invcoco2
if "%cocot%"=="Dd" goto invcoco2
if "%cocot%"=="Ee" goto invcoco2
if "%cocot%"=="Ff" goto invcoco2
if "%cocot%"=="aA" goto invcoco2
if "%cocot%"=="bB" goto invcoco2
if "%cocot%"=="cC" goto invcoco2
if "%cocot%"=="dD" goto invcoco2
if "%cocot%"=="eE" goto invcoco2
if "%cocot%"=="fF" goto invcoco2
goto prococo
:invcoco2
tasklist /fi "imagename eq wscript.exe" |find ":" >nul
if errorlevel 1 taskkill /f /im "wscript.exe" >nul
set speech=You can't use the same text color as the background color. Try again.
if not exist "GenesisFiles" mkdir GenesisFiles
if not exist "GenesisFiles\Saves" mkdir GenesisFiles\Saves
if not exist "GenesisFiles\Saves\Voice" mkdir GenesisFiles\Saves\Voice
echo ' > "GenesisFiles\Saves\Voice\%speech%.vbs"
echo set speech = Wscript.CreateObject("SAPI.spVoice") >> "GenesisFiles\Saves\Voice\%speech%.vbs"
echo set speech.Voice = speech.GetVoices.Item(1) >> "GenesisFiles\Saves\Voice\%speech%.vbs"
echo speech.speak "%speech%" >> "GenesisFiles\Saves\Voice\%speech%.vbs"
start "%speech%" "GenesisFiles\Saves\Voice\%speech%.vbs"
echo You can't use the same text color as the background color.
echo Try again.
echo.
goto changeco2ask
:prococo
set coco=%cocot%
:makesavfile3
color %coco%
if not exist "GenesisFiles" mkdir GenesisFiles
if not exist "GenesisFiles\Saves" mkdir GenesisFiles\Saves
if not exist "GenesisFiles\Saves\Accounts" mkdir GenesisFiles\Saves\Accounts
(
echo %pass%
echo %name%
echo %warn%
echo %coco%
echo %pre%
echo %hage%
echo %age%
echo %year%
echo %teachw%
echo %learnw%
) > "GenesisFiles\Saves\Accounts\%username%.sav"
tasklist /fi "imagename eq wscript.exe" |find ":" >nul
if errorlevel 1 taskkill /f /im "wscript.exe" >nul
set speech=Color changed to %coco%!
if not exist "GenesisFiles" mkdir GenesisFiles
if not exist "GenesisFiles\Saves" mkdir GenesisFiles\Saves
if not exist "GenesisFiles\Saves\Voice" mkdir GenesisFiles\Saves\Voice
echo ' > "GenesisFiles\Saves\Voice\%speech%.vbs"
echo set speech = Wscript.CreateObject("SAPI.spVoice") >> "GenesisFiles\Saves\Voice\%speech%.vbs"
echo set speech.Voice = speech.GetVoices.Item(1) >> "GenesisFiles\Saves\Voice\%speech%.vbs"
echo speech.speak "%speech%" >> "GenesisFiles\Saves\Voice\%speech%.vbs"
start "%speech%" "GenesisFiles\Saves\Voice\%speech%.vbs"
echo Color changed to %coco%!
goto Genesis
:!shutdown
tasklist /fi "imagename eq wscript.exe" |find ":" >nul
if errorlevel 1 taskkill /f /im "wscript.exe" >nul
set speech=Are you sure that you want to shutdown your computer
if not exist "GenesisFiles" mkdir GenesisFiles
if not exist "GenesisFiles\Saves" mkdir GenesisFiles\Saves
if not exist "GenesisFiles\Saves\Voice" mkdir GenesisFiles\Saves\Voice
echo ' > "GenesisFiles\Saves\Voice\%speech%.vbs"
echo set speech = Wscript.CreateObject("SAPI.spVoice") >> "GenesisFiles\Saves\Voice\%speech%.vbs"
echo set speech.Voice = speech.GetVoices.Item(1) >> "GenesisFiles\Saves\Voice\%speech%.vbs"
echo speech.speak "%speech%" >> "GenesisFiles\Saves\Voice\%speech%.vbs"
start "%speech%" "GenesisFiles\Saves\Voice\%speech%.vbs"
echo Are you sure that you want to shutdown your computer?
echo.
:shutdownask
set answer=enter
set /p answer=Y/N:
if "%answer%"=="yes" goto shutdown2
if "%answer%"=="Yes" goto shutdown2
if "%answer%"=="No" goto Genesis
if "%answer%"=="no" goto Genesis
if "%answer%"=="y" goto shutdown2
if "%answer%"=="Y" goto shutdown2
if "%answer%"=="N" goto Genesis
if "%answer%"=="n" goto Genesis
echo.
goto shutdownask
:shutdown2
rmdir /s /q "GenesisFiles\Saves\Voice"
shutdown.exe /s /t 00
exit
:!restart
tasklist /fi "imagename eq wscript.exe" |find ":" >nul
if errorlevel 1 taskkill /f /im "wscript.exe" >nul
set speech=Are you sure that you want to restart your computer
if not exist "GenesisFiles" mkdir GenesisFiles
if not exist "GenesisFiles\Saves" mkdir GenesisFiles\Saves
if not exist "GenesisFiles\Saves\Voice" mkdir GenesisFiles\Saves\Voice
echo ' > "GenesisFiles\Saves\Voice\%speech%.vbs"
echo set speech = Wscript.CreateObject("SAPI.spVoice") >> "GenesisFiles\Saves\Voice\%speech%.vbs"
echo set speech.Voice = speech.GetVoices.Item(1) >> "GenesisFiles\Saves\Voice\%speech%.vbs"
echo speech.speak "%speech%" >> "GenesisFiles\Saves\Voice\%speech%.vbs"
start "%speech%" "GenesisFiles\Saves\Voice\%speech%.vbs"
echo Are you sure that you want to restart your computer?
echo.
:restartask
set answer=enter
set /p answer=Y/N:
if "%answer%"=="yes" goto restart2
if "%answer%"=="Yes" goto restart2
if "%answer%"=="No" goto Genesis
if "%answer%"=="no" goto Genesis
if "%answer%"=="y" goto restart2
if "%answer%"=="Y" goto restart2
if "%answer%"=="N" goto Genesis
if "%answer%"=="n" goto Genesis
echo.
goto restartask
:restart2
rmdir /s /q "GenesisFiles\Saves\Voice"
shutdown.exe /r /t 00
exit
:!maketxtfile
set filet=txt
set line=0
set txt=Enter
tasklist /fi "imagename eq wscript.exe" |find ":" >nul
if errorlevel 1 taskkill /f /im "wscript.exe" >nul
set speech=What would you like to name the text file
if not exist "GenesisFiles" mkdir GenesisFiles
if not exist "GenesisFiles\Saves" mkdir GenesisFiles\Saves
if not exist "GenesisFiles\Saves\Voice" mkdir GenesisFiles\Saves\Voice
echo ' > "GenesisFiles\Saves\Voice\%speech%.vbs"
echo set speech = Wscript.CreateObject("SAPI.spVoice") >> "GenesisFiles\Saves\Voice\%speech%.vbs"
echo set speech.Voice = speech.GetVoices.Item(1) >> "GenesisFiles\Saves\Voice\%speech%.vbs"
echo speech.speak "%speech%" >> "GenesisFiles\Saves\Voice\%speech%.vbs"
start "%speech%" "GenesisFiles\Saves\Voice\%speech%.vbs"
echo What would you like to name the text (.txt) file?
echo (You can't use question marks.)
echo.
set /p txt=%pre%
set txt=%txt:?=%
set txt=%txt::=%
:maketxtfile2
set txtin=.
set /a line=%line%+1
tasklist /fi "imagename eq wscript.exe" |find ":" >nul
if errorlevel 1 taskkill /f /im "wscript.exe" >nul
set speech=What would you like to be in the text file, %txt%
if not exist "GenesisFiles" mkdir GenesisFiles
if not exist "GenesisFiles\Saves" mkdir GenesisFiles\Saves
if not exist "GenesisFiles\Saves\Voice" mkdir GenesisFiles\Saves\Voice
echo ' > "GenesisFiles\Saves\Voice\%speech%.vbs"
echo set speech = Wscript.CreateObject("SAPI.spVoice") >> "GenesisFiles\Saves\Voice\%speech%.vbs"
echo set speech.Voice = speech.GetVoices.Item(1) >> "GenesisFiles\Saves\Voice\%speech%.vbs"
echo speech.speak "%speech%" >> "GenesisFiles\Saves\Voice\%speech%.vbs"
start "%speech%" "GenesisFiles\Saves\Voice\%speech%.vbs"
echo What would you like to be in the text (.txt) file, 
echo %txt%?
echo (Everytime you enter something, it fills a line.)
echo (Enter d when you're done.)
echo.
set /p txtin=Line %line%:
if not exist "GenesisFiles" mkdir GenesisFiles
if not exist "GenesisFiles\CreatedFiles" mkdir GenesisFiles\CreatedFiles
if "%txtin%"=="d" goto filedone
echo %txtin% >>"GenesisFiles\CreatedFiles\%txt%.txt"
:maketxtfile2a
set txtin=.
set /a line=%line%+1
set /p txtin=Line %line%:
if not exist "GenesisFiles" mkdir GenesisFiles
if not exist "GenesisFiles\CreatedFiles" mkdir GenesisFiles\CreatedFiles
if "%txtin%"=="d" goto filedone
echo %txtin% >>"GenesisFiles\CreatedFiles\%txt%.txt"
goto maketxtfile2a
:!makebatfile
set filet=bat
set line=0
set bat=Enter
tasklist /fi "imagename eq wscript.exe" |find ":" >nul
if errorlevel 1 taskkill /f /im "wscript.exe" >nul
set speech=What would you like to name the batch file
if not exist "GenesisFiles" mkdir GenesisFiles
if not exist "GenesisFiles\Saves" mkdir GenesisFiles\Saves
if not exist "GenesisFiles\Saves\Voice" mkdir GenesisFiles\Saves\Voice
echo ' > "GenesisFiles\Saves\Voice\%speech%.vbs"
echo set speech = Wscript.CreateObject("SAPI.spVoice") >> "GenesisFiles\Saves\Voice\%speech%.vbs"
echo set speech.Voice = speech.GetVoices.Item(1) >> "GenesisFiles\Saves\Voice\%speech%.vbs"
echo speech.speak "%speech%" >> "GenesisFiles\Saves\Voice\%speech%.vbs"
start "%speech%" "GenesisFiles\Saves\Voice\%speech%.vbs"
echo What would you like to name the batch (.bat) file?
echo (You can't use question marks.)
echo.
set /p bat=%pre%
set bat=%bat:?=%
set bat=%bat::=%
:makebatfile2
set batin=.
set /a line=%line%+1
tasklist /fi "imagename eq wscript.exe" |find ":" >nul
if errorlevel 1 taskkill /f /im "wscript.exe" >nul
set speech=What would you like to be in the batch file, %bat%
if not exist "GenesisFiles" mkdir GenesisFiles
if not exist "GenesisFiles\Saves" mkdir GenesisFiles\Saves
if not exist "GenesisFiles\Saves\Voice" mkdir GenesisFiles\Saves\Voice
echo ' > "GenesisFiles\Saves\Voice\%speech%.vbs"
echo set speech = Wscript.CreateObject("SAPI.spVoice") >> "GenesisFiles\Saves\Voice\%speech%.vbs"
echo set speech.Voice = speech.GetVoices.Item(1) >> "GenesisFiles\Saves\Voice\%speech%.vbs"
echo speech.speak "%speech%" >> "GenesisFiles\Saves\Voice\%speech%.vbs"
start "%speech%" "GenesisFiles\Saves\Voice\%speech%.vbs"
echo What would you like to be in the batch (.bat) file, 
echo %bat%?
echo (Everytime you enter something, it fills a line.)
echo (Enter d when you're done.)
echo.
set /p batin=Line %line%:
if not exist "GenesisFiles" mkdir GenesisFiles
if not exist "GenesisFiles\CreatedFiles" mkdir GenesisFiles\CreatedFiles
if "%batin%"=="d" goto filedone
echo %batin% >>"GenesisFiles\CreatedFiles\%bat%.bat"
:makebatfile2a
set batin=.
set /a line=%line%+1
set /p batin=Line %line%:
if not exist "GenesisFiles" mkdir GenesisFiles
if not exist "GenesisFiles\CreatedFiles" mkdir GenesisFiles\CreatedFiles
if "%batin%"=="d" goto filedone
echo %batin% >>"GenesisFiles\CreatedFiles\%bat%.bat"
goto makebatfile2a
:!makesavfile
set filet=sav
set line=0
set sav=Enter
tasklist /fi "imagename eq wscript.exe" |find ":" >nul
if errorlevel 1 taskkill /f /im "wscript.exe" >nul
set speech=What would you like to name the save file
if not exist "GenesisFiles" mkdir GenesisFiles
if not exist "GenesisFiles\Saves" mkdir GenesisFiles\Saves
if not exist "GenesisFiles\Saves\Voice" mkdir GenesisFiles\Saves\Voice
echo ' > "GenesisFiles\Saves\Voice\%speech%.vbs"
echo set speech = Wscript.CreateObject("SAPI.spVoice") >> "GenesisFiles\Saves\Voice\%speech%.vbs"
echo set speech.Voice = speech.GetVoices.Item(1) >> "GenesisFiles\Saves\Voice\%speech%.vbs"
echo speech.speak "%speech%" >> "GenesisFiles\Saves\Voice\%speech%.vbs"
start "%speech%" "GenesisFiles\Saves\Voice\%speech%.vbs"
echo What would you like to name the save (.sav) file?
echo (You can't use question marks.)
echo.
set /p sav=%pre%
set sav=%sav:?=%
set sav=%sav::=%
:makesavvfile2
set savin=.
set /a line=%line%+1
tasklist /fi "imagename eq wscript.exe" |find ":" >nul
if errorlevel 1 taskkill /f /im "wscript.exe" >nul
set speech=What would you like to be in the save file, %sav%
if not exist "GenesisFiles" mkdir GenesisFiles
if not exist "GenesisFiles\Saves" mkdir GenesisFiles\Saves
if not exist "GenesisFiles\Saves\Voice" mkdir GenesisFiles\Saves\Voice
echo ' > "GenesisFiles\Saves\Voice\%speech%.vbs"
echo set speech = Wscript.CreateObject("SAPI.spVoice") >> "GenesisFiles\Saves\Voice\%speech%.vbs"
echo set speech.Voice = speech.GetVoices.Item(1) >> "GenesisFiles\Saves\Voice\%speech%.vbs"
echo speech.speak "%speech%" >> "GenesisFiles\Saves\Voice\%speech%.vbs"
start "%speech%" "GenesisFiles\Saves\Voice\%speech%.vbs"
echo What would you like to be in the save (.sav) file, 
echo %sav%?
echo (Everytime you enter something, it fills a line.)
echo (Enter d when you're done.)
echo.
set /p savin=Line %line%:
if not exist "GenesisFiles" mkdir GenesisFiles
if not exist "GenesisFiles\CreatedFiles" mkdir GenesisFiles\CreatedFiles
if "%savin%"=="d" goto filedone
echo %savin% >>"GenesisFiles\CreatedFiles\%sav%.sav"
:makesavfile2a
set savin=.
set /a line=%line%+1
set /p savin=Line %line%:
if not exist "GenesisFiles" mkdir GenesisFiles
if not exist "GenesisFiles\CreatedFiles" mkdir GenesisFiles\CreatedFiles
if "%savin%"=="d" goto filedone
echo %savin% >>"GenesisFiles\CreatedFiles\%sav%.sav"
goto makesavfile2a
:filedone
if %line%==1 goto filenm
tasklist /fi "imagename eq wscript.exe" |find ":" >nul
if errorlevel 1 taskkill /f /im "wscript.exe" >nul
set speech=Your %filet% file has successfully been created!
if not exist "GenesisFiles" mkdir GenesisFiles
if not exist "GenesisFiles\Saves" mkdir GenesisFiles\Saves
if not exist "GenesisFiles\Saves\Voice" mkdir GenesisFiles\Saves\Voice
echo ' > "GenesisFiles\Saves\Voice\%speech%.vbs"
echo set speech = Wscript.CreateObject("SAPI.spVoice") >> "GenesisFiles\Saves\Voice\%speech%.vbs"
echo set speech.Voice = speech.GetVoices.Item(1) >> "GenesisFiles\Saves\Voice\%speech%.vbs"
echo speech.speak "%speech%" >> "GenesisFiles\Saves\Voice\%speech%.vbs"
start "%speech%" "GenesisFiles\Saves\Voice\%speech%.vbs"
echo.
echo Your %filet% file has successfully been created!
echo (It will be stored in the CreatedFiles folder.)
echo (Located in the GenesisFiles folder.)
echo.
goto Genesis
:filenm
tasklist /fi "imagename eq wscript.exe" |find ":" >nul
if errorlevel 1 taskkill /f /im "wscript.exe" >nul
set speech=Your %filet% file has not been created.
if not exist "GenesisFiles" mkdir GenesisFiles
if not exist "GenesisFiles\Saves" mkdir GenesisFiles\Saves
if not exist "GenesisFiles\Saves\Voice" mkdir GenesisFiles\Saves\Voice
echo ' > "GenesisFiles\Saves\Voice\%speech%.vbs"
echo set speech = Wscript.CreateObject("SAPI.spVoice") >> "GenesisFiles\Saves\Voice\%speech%.vbs"
echo set speech.Voice = speech.GetVoices.Item(1) >> "GenesisFiles\Saves\Voice\%speech%.vbs"
echo speech.speak "%speech%" >> "GenesisFiles\Saves\Voice\%speech%.vbs"
start "%speech%" "GenesisFiles\Saves\Voice\%speech%.vbs"
echo Your %filet% file has not been created.
echo.
goto Genesis
:!changename
tasklist /fi "imagename eq wscript.exe" |find ":" >nul
if errorlevel 1 taskkill /f /im "wscript.exe" >nul
set speech=What do you want your new name to be
if not exist "GenesisFiles" mkdir GenesisFiles
if not exist "GenesisFiles\Saves" mkdir GenesisFiles\Saves
if not exist "GenesisFiles\Saves\Voice" mkdir GenesisFiles\Saves\Voice
echo ' > "GenesisFiles\Saves\Voice\%speech%.vbs"
echo set speech = Wscript.CreateObject("SAPI.spVoice") >> "GenesisFiles\Saves\Voice\%speech%.vbs"
echo set speech.Voice = speech.GetVoices.Item(1) >> "GenesisFiles\Saves\Voice\%speech%.vbs"
echo speech.speak "%speech%" >> "GenesisFiles\Saves\Voice\%speech%.vbs"
start "%speech%" "GenesisFiles\Saves\Voice\%speech%.vbs"
echo Your current name is: %name%
echo What do you want your new name to be?
echo (Or enter m to go back.)
echo.
:changenameask
set fname=Enter
set /p fname=New name:
set fnamef=%fname%
set fnamef=%fnamef:?=%
set fnamef=%fnamef::=%
if "%fname%"=="m" goto Genesis
if "%fname%"=="M" goto Genesis
if "%fname%"=="%name%" goto AUNAME
goto nameconfirm
:AUNAME
tasklist /fi "imagename eq wscript.exe" |find ":" >nul
if errorlevel 1 taskkill /f /im "wscript.exe" >nul
set speech=Your name is already set as %fnamef%. Try again.
if not exist "GenesisFiles" mkdir GenesisFiles
if not exist "GenesisFiles\Saves" mkdir GenesisFiles\Saves
if not exist "GenesisFiles\Saves\Voice" mkdir GenesisFiles\Saves\Voice
echo ' > "GenesisFiles\Saves\Voice\%speech%.vbs"
echo set speech = Wscript.CreateObject("SAPI.spVoice") >> "GenesisFiles\Saves\Voice\%speech%.vbs"
echo set speech.Voice = speech.GetVoices.Item(1) >> "GenesisFiles\Saves\Voice\%speech%.vbs"
echo speech.speak "%speech%" >> "GenesisFiles\Saves\Voice\%speech%.vbs"
start "%speech%" "GenesisFiles\Saves\Voice\%speech%.vbs"
echo Your name is already set as: %name%
echo Try again.
echo.
goto changenameask
:nameconfirm
tasklist /fi "imagename eq wscript.exe" |find ":" >nul
if errorlevel 1 taskkill /f /im "wscript.exe" >nul
set speech=Your new name is %fnamef%, am I correct
if not exist "GenesisFiles" mkdir GenesisFiles
if not exist "GenesisFiles\Saves" mkdir GenesisFiles\Saves
if not exist "GenesisFiles\Saves\Voice" mkdir GenesisFiles\Saves\Voice
echo ' > "GenesisFiles\Saves\Voice\%speech%.vbs"
echo set speech = Wscript.CreateObject("SAPI.spVoice") >> "GenesisFiles\Saves\Voice\%speech%.vbs"
echo set speech.Voice = speech.GetVoices.Item(1) >> "GenesisFiles\Saves\Voice\%speech%.vbs"
echo speech.speak "%speech%" >> "GenesisFiles\Saves\Voice\%speech%.vbs"
start "%speech%" "GenesisFiles\Saves\Voice\%speech%.vbs"
echo Your new name is %fname%, am I correct?
echo.
:nameconfirmask
set answer=enter
set /p answer=Y/N:
if "%answer%"=="Yes" goto changename2
if "%answer%"=="No" goto !changename
if "%answer%"=="yes" goto changename2
if "%answer%"=="no" goto !changename
if "%answer%"=="Y" goto changename2
if "%answer%"=="N" goto !changename
if "%answer%"=="y" goto changename2
if "%answer%"=="n" goto !changename
goto nameconfirmask
:changename2
set name=%fname%
:makesavfile4
if not exist "GenesisFiles" mkdir GenesisFiles
if not exist "GenesisFiles\Saves" mkdir GenesisFiles\Saves
if not exist "GenesisFiles\Saves\Accounts" mkdir GenesisFiles\Saves\Accounts
(
echo %pass%
echo %name%
echo %warn%
echo %coco%
echo %pre%
echo %hage%
echo %age%
echo %year%
echo %teachw%
echo %learnw%
) > "GenesisFiles\Saves\Accounts\%username%.sav"
tasklist /fi "imagename eq wscript.exe" |find ":" >nul
if errorlevel 1 taskkill /f /im "wscript.exe" >nul
set speech=Your name is now %fnamef%
if not exist "GenesisFiles" mkdir GenesisFiles
if not exist "GenesisFiles\Saves" mkdir GenesisFiles\Saves
if not exist "GenesisFiles\Saves\Voice" mkdir GenesisFiles\Saves\Voice
echo ' > "GenesisFiles\Saves\Voice\%speech%.vbs"
echo set speech = Wscript.CreateObject("SAPI.spVoice") >> "GenesisFiles\Saves\Voice\%speech%.vbs"
echo set speech.Voice = speech.GetVoices.Item(1) >> "GenesisFiles\Saves\Voice\%speech%.vbs"
echo speech.speak "%speech%" >> "GenesisFiles\Saves\Voice\%speech%.vbs"
start "%speech%" "GenesisFiles\Saves\Voice\%speech%.vbs"
echo Your name is now %name%
goto Genesis
:!calculate
set calinput=Enter
tasklist /fi "imagename eq wscript.exe" |find ":" >nul
if errorlevel 1 taskkill /f /im "wscript.exe" >nul
set speech=Type in your equation here
if not exist "GenesisFiles" mkdir GenesisFiles
if not exist "GenesisFiles\Saves" mkdir GenesisFiles\Saves
if not exist "GenesisFiles\Saves\Voice" mkdir GenesisFiles\Saves\Voice
echo ' > "GenesisFiles\Saves\Voice\%speech%.vbs"
echo set speech = Wscript.CreateObject("SAPI.spVoice") >> "GenesisFiles\Saves\Voice\%speech%.vbs"
echo set speech.Voice = speech.GetVoices.Item(1) >> "GenesisFiles\Saves\Voice\%speech%.vbs"
echo speech.speak "%speech%" >> "GenesisFiles\Saves\Voice\%speech%.vbs"
start "%speech%" "GenesisFiles\Saves\Voice\%speech%.vbs"
echo Type in your equation here:
echo (Addition uses +, Subtraction uses -,
echo Multiplication uses *, and Division uses /)
echo (Or enter m to go to start.)
echo.
:calculateask
set calinput=Enter
set /p calinput=Calculate:
if "%calinput%"=="m" goto Genesis
if "%calinput%"=="M" goto Genesis
if "%calinput%"=="Enter" goto calculateask
set /a calans=%calinput%
tasklist /fi "imagename eq wscript.exe" |find ":" >nul
if errorlevel 1 taskkill /f /im "wscript.exe" >nul
set speech=The answer to your equation is %calans%
if not exist "GenesisFiles" mkdir GenesisFiles
if not exist "GenesisFiles\Saves" mkdir GenesisFiles\Saves
if not exist "GenesisFiles\Saves\Voice" mkdir GenesisFiles\Saves\Voice
echo ' > "GenesisFiles\Saves\Voice\%speech%.vbs"
echo set speech = Wscript.CreateObject("SAPI.spVoice") >> "GenesisFiles\Saves\Voice\%speech%.vbs"
echo set speech.Voice = speech.GetVoices.Item(1) >> "GenesisFiles\Saves\Voice\%speech%.vbs"
echo speech.speak "%speech%" >> "GenesisFiles\Saves\Voice\%speech%.vbs"
start "%speech%" "GenesisFiles\Saves\Voice\%speech%.vbs"
echo The answer to your equation is:
echo %calans%
echo.
timeout 5 >nul
:calculate2
tasklist /fi "imagename eq wscript.exe" |find ":" >nul
if errorlevel 1 taskkill /f /im "wscript.exe" >nul
set speech=What would you like to do to %calans%
if not exist "GenesisFiles" mkdir GenesisFiles
if not exist "GenesisFiles\Saves" mkdir GenesisFiles\Saves
if not exist "GenesisFiles\Saves\Voice" mkdir GenesisFiles\Saves\Voice
echo ' > "GenesisFiles\Saves\Voice\%speech%.vbs"
echo set speech = Wscript.CreateObject("SAPI.spVoice") >> "GenesisFiles\Saves\Voice\%speech%.vbs"
echo set speech.Voice = speech.GetVoices.Item(1) >> "GenesisFiles\Saves\Voice\%speech%.vbs"
echo speech.speak "%speech%" >> "GenesisFiles\Saves\Voice\%speech%.vbs"
start "%speech%" "GenesisFiles\Saves\Voice\%speech%.vbs"
echo What would you like to do to %calans%?
echo (ex. +2)
echo (Addition uses +, Subtraction uses -,
echo Multiplication uses *, and Division uses /)
echo (Or enter m to go to start.)
echo.
:calculate2ask
set calinput=Enter
set /p calinput=Calculate:
if "%calinput%"=="m" goto Genesis
if "%calinput%"=="M" goto Genesis
if "%calinput%"=="Enter" goto calculate2ask
set /a calans=%calans%%calinput%
tasklist /fi "imagename eq wscript.exe" |find ":" >nul
if errorlevel 1 taskkill /f /im "wscript.exe" >nul
set speech=The answer to your equation is %calans%
if not exist "GenesisFiles" mkdir GenesisFiles
if not exist "GenesisFiles\Saves" mkdir GenesisFiles\Saves
if not exist "GenesisFiles\Saves\Voice" mkdir GenesisFiles\Saves\Voice
echo ' > "GenesisFiles\Saves\Voice\%speech%.vbs"
echo set speech = Wscript.CreateObject("SAPI.spVoice") >> "GenesisFiles\Saves\Voice\%speech%.vbs"
echo set speech.Voice = speech.GetVoices.Item(1) >> "GenesisFiles\Saves\Voice\%speech%.vbs"
echo speech.speak "%speech%" >> "GenesisFiles\Saves\Voice\%speech%.vbs"
start "%speech%" "GenesisFiles\Saves\Voice\%speech%.vbs"
echo The answer to your equation is:
echo %calans%
echo.
timeout 5 >nul
:calculate3
tasklist /fi "imagename eq wscript.exe" |find ":" >nul
if errorlevel 1 taskkill /f /im "wscript.exe" >nul
set speech=What would you like to do to %calans%
if not exist "GenesisFiles" mkdir GenesisFiles
if not exist "GenesisFiles\Saves" mkdir GenesisFiles\Saves
if not exist "GenesisFiles\Saves\Voice" mkdir GenesisFiles\Saves\Voice
echo ' > "GenesisFiles\Saves\Voice\%speech%.vbs"
echo set speech = Wscript.CreateObject("SAPI.spVoice") >> "GenesisFiles\Saves\Voice\%speech%.vbs"
echo set speech.Voice = speech.GetVoices.Item(1) >> "GenesisFiles\Saves\Voice\%speech%.vbs"
echo speech.speak "%speech%" >> "GenesisFiles\Saves\Voice\%speech%.vbs"
start "%speech%" "GenesisFiles\Saves\Voice\%speech%.vbs"
echo What would you like to do to %calans%?
echo (Or enter m to go to start.)
echo.
:calculate3ask
set calinput=Enter
set /p calinput=Calculate:
if "%calinput%"=="m" goto Genesis
if "%calinput%"=="M" goto Genesis
if "%calinput%"=="Enter" goto calculate3ask
set /a calans=%calans%%calinput%
tasklist /fi "imagename eq wscript.exe" |find ":" >nul
if errorlevel 1 taskkill /f /im "wscript.exe" >nul
set speech=The answer to your equation is %calans%
if not exist "GenesisFiles" mkdir GenesisFiles
if not exist "GenesisFiles\Saves" mkdir GenesisFiles\Saves
if not exist "GenesisFiles\Saves\Voice" mkdir GenesisFiles\Saves\Voice
echo ' > "GenesisFiles\Saves\Voice\%speech%.vbs"
echo set speech = Wscript.CreateObject("SAPI.spVoice") >> "GenesisFiles\Saves\Voice\%speech%.vbs"
echo set speech.Voice = speech.GetVoices.Item(1) >> "GenesisFiles\Saves\Voice\%speech%.vbs"
echo speech.speak "%speech%" >> "GenesisFiles\Saves\Voice\%speech%.vbs"
start "%speech%" "GenesisFiles\Saves\Voice\%speech%.vbs"
echo The answer to your equation is:
echo %calans%
echo.
timeout 5 >nul
goto calculate3
:!about
tasklist /fi "imagename eq wscript.exe" |find ":" >nul
if errorlevel 1 taskkill /f /im "wscript.exe" >nul
set speech=I was created by ACA. (Aiden Adams). My production started on June 29th, 2017. I was last updated on August 14th, 2018. I was created on Windows 10.
if not exist "GenesisFiles" mkdir GenesisFiles
if not exist "GenesisFiles\Saves" mkdir GenesisFiles\Saves
if not exist "GenesisFiles\Saves\Voice" mkdir GenesisFiles\Saves\Voice
echo ' > "GenesisFiles\Saves\Voice\%speech%.vbs"
echo set speech = Wscript.CreateObject("SAPI.spVoice") >> "GenesisFiles\Saves\Voice\%speech%.vbs"
echo set speech.Voice = speech.GetVoices.Item(1) >> "GenesisFiles\Saves\Voice\%speech%.vbs"
echo speech.speak "%speech%" >> "GenesisFiles\Saves\Voice\%speech%.vbs"
start "%speech%" "GenesisFiles\Saves\Voice\%speech%.vbs"
echo I was created by ACA
echo (Aiden Adams)
echo.
echo My production started: 6/29/17
echo I was last updated: 8/14/18
echo.
echo I was created on Windows 10, (Notepad)
echo.
pause
tasklist /fi "imagename eq wscript.exe" |find ":" >nul
if errorlevel 1 taskkill /f /im "wscript.exe" >nul
goto Genesis
:!time
set hour=%time:~0,2%
if "%hour:~0,1%" == " " set hour=0%hour:~1,1%
set min=%time:~3,2%
if "%min:~0,1%" == " " set min=0%min:~1,1%
set secs=%time:~6,2%
if "%secs:~0,1%" == " " set secs=0%secs:~1,1%
set AMPM=AM
if %hour%==01 set hour=1
if %hour%==02 set hour=2
if %hour%==03 set hour=3
if %hour%==04 set hour=4
if %hour%==05 set hour=5
if %hour%==06 set hour=6
if %hour%==07 set hour=7
if %hour%==08 set hour=8
if %hour%==09 set hour=9
if %hour%==10 goto timeac
if %hour%==11 goto timeac
if %hour%==24 set AMPM=AM
if %hour%==12 set AMPM=PM
if %hour%==13 set AMPM=PM
if %hour%==14 set AMPM=PM
if %hour%==15 set AMPM=PM
if %hour%==16 set AMPM=PM
if %hour%==17 set AMPM=PM
if %hour%==18 set AMPM=PM
if %hour%==19 set AMPM=PM
if %hour%==20 set AMPM=PM
if %hour%==21 set AMPM=PM
if %hour%==22 set AMPM=PM
if %hour%==23 set AMPM=PM
:TIMERC
if %hour%==24 set hour=12
if %hour%==12 set hour=12
if %hour%==13 set hour=1
if %hour%==14 set hour=2
if %hour%==15 set hour=3
if %hour%==16 set hour=4
if %hour%==17 set hour=5
if %hour%==18 set hour=6
if %hour%==19 set hour=7
if %hour%==20 set hour=8
if %hour%==21 set hour=9
if %hour%==22 set hour=10
if %hour%==23 set hour=11
:timeac
tasklist /fi "imagename eq wscript.exe" |find ":" >nul
if errorlevel 1 taskkill /f /im "wscript.exe" >nul
set speech=The time is %hour% %min% %AMPM%.
if not exist "GenesisFiles" mkdir GenesisFiles
if not exist "GenesisFiles\Saves" mkdir GenesisFiles\Saves
if not exist "GenesisFiles\Saves\Voice" mkdir GenesisFiles\Saves\Voice
echo ' > "GenesisFiles\Saves\Voice\%speech%.vbs"
echo set speech = Wscript.CreateObject("SAPI.spVoice") >> "GenesisFiles\Saves\Voice\%speech%.vbs"
echo set speech.Voice = speech.GetVoices.Item(1) >> "GenesisFiles\Saves\Voice\%speech%.vbs"
echo speech.speak "%speech%" >> "GenesisFiles\Saves\Voice\%speech%.vbs"
start "%speech%" "GenesisFiles\Saves\Voice\%speech%.vbs"
echo The time is %hour%:%min% %AMPM%.
goto Genesis
:!whattimeisit
goto !time
:!whattimeisitrightnow
goto !time
:!whatisthetime
goto !time
:!whatisthetimerightnow
goto !time
:!date
set month=%date:~-10,2%
set day=%date:~7,2%
set datyear=%date:~-4%
if "%month%"=="01" set month=January
if "%month%"=="02" set month=February
if "%month%"=="03" set month=March
if "%month%"=="04" set month=April
if "%month%"=="05" set month=May
if "%month%"=="06" set month=June
if "%month%"=="07" set month=July
if "%month%"=="08" set month=August
if "%month%"=="09" set month=September
if "%month%"=="10" set month=October
if "%month%"=="11" set month=November
if "%month%"=="12" set month=December
if "%day%"=="01" set day=1st
if "%day%"=="02" set day=2nd
if "%day%"=="03" set day=3rd
if "%day%"=="04" set day=4th
if "%day%"=="05" set day=5th
if "%day%"=="06" set day=6th
if "%day%"=="07" set day=7th
if "%day%"=="08" set day=8th
if "%day%"=="09" set day=9th
if "%day%"=="10" set day=10th
if "%day%"=="11" set day=11th
if "%day%"=="12" set day=12th
if "%day%"=="13" set day=13th
if "%day%"=="14" set day=14th
if "%day%"=="15" set day=15th
if "%day%"=="16" set day=16th
if "%day%"=="17" set day=17th
if "%day%"=="18" set day=18th
if "%day%"=="19" set day=19th
if "%day%"=="20" set day=20th
if "%day%"=="21" set day=21st
if "%day%"=="22" set day=22nd
if "%day%"=="23" set day=23rd
if "%day%"=="24" set day=24th
if "%day%"=="25" set day=25th
if "%day%"=="26" set day=26th
if "%day%"=="27" set day=27th
if "%day%"=="28" set day=28th
if "%day%"=="29" set day=29th
if "%day%"=="30" set day=30th
if "%day%"=="31" set day=31st
tasklist /fi "imagename eq wscript.exe" |find ":" >nul
if errorlevel 1 taskkill /f /im "wscript.exe" >nul
set speech=The date is %month% %day%, %datyear%.
if not exist "GenesisFiles" mkdir GenesisFiles
if not exist "GenesisFiles\Saves" mkdir GenesisFiles\Saves
if not exist "GenesisFiles\Saves\Voice" mkdir GenesisFiles\Saves\Voice
echo ' > "GenesisFiles\Saves\Voice\%speech%.vbs"
echo set speech = Wscript.CreateObject("SAPI.spVoice") >> "GenesisFiles\Saves\Voice\%speech%.vbs"
echo set speech.Voice = speech.GetVoices.Item(1) >> "GenesisFiles\Saves\Voice\%speech%.vbs"
echo speech.speak "%speech%" >> "GenesisFiles\Saves\Voice\%speech%.vbs"
start "%speech%" "GenesisFiles\Saves\Voice\%speech%.vbs"
echo The date is %month% %day%, %datyear%.
goto Genesis
:!whatisthedate
goto !date
:!whatisthedaterightnow
goto !date
:!whatisthedatetoday
goto !date
:!howoldami
if "%hage%"=="0" goto idkhoay
if "%hage%"=="1" goto yaah2
goto Genesis
:idkhoay
set answer=enter
tasklist /fi "imagename eq wscript.exe" |find ":" >nul
if errorlevel 1 taskkill /f /im "wscript.exe" >nul
set speech=I don't know, how old are you
if not exist "GenesisFiles" mkdir GenesisFiles
if not exist "GenesisFiles\Saves" mkdir GenesisFiles\Saves
if not exist "GenesisFiles\Saves\Voice" mkdir GenesisFiles\Saves\Voice
echo ' > "GenesisFiles\Saves\Voice\%speech%.vbs"
echo set speech = Wscript.CreateObject("SAPI.spVoice") >> "GenesisFiles\Saves\Voice\%speech%.vbs"
echo set speech.Voice = speech.GetVoices.Item(1) >> "GenesisFiles\Saves\Voice\%speech%.vbs"
echo speech.speak "%speech%" >> "GenesisFiles\Saves\Voice\%speech%.vbs"
start "%speech%" "GenesisFiles\Saves\Voice\%speech%.vbs"
echo I don't know, how old are you?
echo (Or enter m to go back.)
echo.
:selectuage
echo.
set /p answer=Age:
if "%answer%"=="m" goto Genesis
if "%answer%"=="M" goto Genesis
if "%answer%"=="1" goto changeagei
if "%answer%"=="2" goto changeagei
if "%answer%"=="3" goto changeagei
if "%answer%"=="4" goto changeagei
if "%answer%"=="5" goto changeagei
if "%answer%"=="6" goto changeagei
if "%answer%"=="7" goto changeagei
if "%answer%"=="8" goto changeagei
if "%answer%"=="9" goto changeagei
if "%answer%"=="10" goto changeagei
if "%answer%"=="11" goto changeagei
if "%answer%"=="12" goto changeagei
if "%answer%"=="13" goto changeagei
if "%answer%"=="14" goto changeagei
if "%answer%"=="15" goto changeagei
if "%answer%"=="16" goto changeagei
if "%answer%"=="17" goto changeagei
if "%answer%"=="18" goto changeagei
if "%answer%"=="19" goto changeagei
if "%answer%"=="20" goto changeagei
if "%answer%"=="21" goto changeagei
if "%answer%"=="22" goto changeagei
if "%answer%"=="23" goto changeagei
if "%answer%"=="24" goto changeagei
if "%answer%"=="25" goto changeagei
if "%answer%"=="26" goto changeagei
if "%answer%"=="27" goto changeagei
if "%answer%"=="28" goto changeagei
if "%answer%"=="29" goto changeagei
if "%answer%"=="30" goto changeagei
if "%answer%"=="31" goto changeagei
if "%answer%"=="32" goto changeagei
if "%answer%"=="33" goto changeagei
if "%answer%"=="34" goto changeagei
if "%answer%"=="35" goto changeagei
if "%answer%"=="36" goto changeagei
if "%answer%"=="37" goto changeagei
if "%answer%"=="38" goto changeagei
if "%answer%"=="39" goto changeagei
if "%answer%"=="40" goto changeagei
if "%answer%"=="41" goto changeagei
if "%answer%"=="42" goto changeagei
if "%answer%"=="43" goto changeagei
if "%answer%"=="44" goto changeagei
if "%answer%"=="45" goto changeagei
if "%answer%"=="46" goto changeagei
if "%answer%"=="47" goto changeagei
if "%answer%"=="48" goto changeagei
if "%answer%"=="49" goto changeagei
if "%answer%"=="50" goto changeagei
if "%answer%"=="51" goto changeagei
if "%answer%"=="52" goto changeagei
if "%answer%"=="53" goto changeagei
if "%answer%"=="54" goto changeagei
if "%answer%"=="55" goto changeagei
if "%answer%"=="56" goto changeagei
if "%answer%"=="57" goto changeagei
if "%answer%"=="58" goto changeagei
if "%answer%"=="59" goto changeagei
if "%answer%"=="60" goto changeagei
if "%answer%"=="61" goto changeagei
if "%answer%"=="62" goto changeagei
if "%answer%"=="63" goto changeagei
if "%answer%"=="64" goto changeagei
if "%answer%"=="65" goto changeagei
if "%answer%"=="66" goto changeagei
if "%answer%"=="67" goto changeagei
if "%answer%"=="68" goto changeagei
if "%answer%"=="69" goto changeagei
if "%answer%"=="70" goto changeagei
if "%answer%"=="71" goto changeagei
if "%answer%"=="72" goto changeagei
if "%answer%"=="73" goto changeagei
if "%answer%"=="74" goto changeagei
if "%answer%"=="75" goto changeagei
if "%answer%"=="76" goto changeagei
if "%answer%"=="77" goto changeagei
if "%answer%"=="78" goto changeagei
if "%answer%"=="79" goto changeagei
if "%answer%"=="80" goto changeagei
if "%answer%"=="81" goto changeagei
if "%answer%"=="82" goto changeagei
if "%answer%"=="83" goto changeagei
if "%answer%"=="84" goto changeagei
if "%answer%"=="85" goto changeagei
if "%answer%"=="86" goto changeagei
if "%answer%"=="87" goto changeagei
if "%answer%"=="88" goto changeagei
if "%answer%"=="89" goto changeagei
if "%answer%"=="90" goto changeagei
if "%answer%"=="91" goto changeagei
if "%answer%"=="92" goto changeagei
if "%answer%"=="93" goto changeagei
if "%answer%"=="94" goto changeagei
if "%answer%"=="95" goto changeagei
if "%answer%"=="96" goto changeagei
if "%answer%"=="97" goto changeagei
if "%answer%"=="98" goto changeagei
if "%answer%"=="99" goto changeagei
if "%answer%"=="100" goto changeagei
if "%answer%"=="101" goto changeagei
if "%answer%"=="102" goto changeagei
echo That is an invalid age! Try again.
goto selectuage
:changeagei
if %answer%==1 goto changeagei1
set year=years
set age=%answer%
set hage=1
goto makesavfile5
:changeagei1
set year=year
set age=%answer%
set hage=1
goto makesavfile5
:makesavfile5
if not exist "GenesisFiles" mkdir GenesisFiles
if not exist "GenesisFiles\Saves" mkdir GenesisFiles\Saves
if not exist "GenesisFiles\Saves\Accounts" mkdir GenesisFiles\Saves\Accounts
(
echo %pass%
echo %name%
echo %warn%
echo %coco%
echo %pre%
echo %hage%
echo %age%
echo %year%
echo %teachw%
echo %learnw%
) > "GenesisFiles\Saves\Accounts\%username%.sav"
goto okyaayo
:okyaayo
tasklist /fi "imagename eq wscript.exe" |find ":" >nul
if errorlevel 1 taskkill /f /im "wscript.exe" >nul
set speech=Ok, you are %age% %year% old!
if not exist "GenesisFiles" mkdir GenesisFiles
if not exist "GenesisFiles\Saves" mkdir GenesisFiles\Saves
if not exist "GenesisFiles\Saves\Voice" mkdir GenesisFiles\Saves\Voice
echo ' > "GenesisFiles\Saves\Voice\%speech%.vbs"
echo set speech = Wscript.CreateObject("SAPI.spVoice") >> "GenesisFiles\Saves\Voice\%speech%.vbs"
echo set speech.Voice = speech.GetVoices.Item(1) >> "GenesisFiles\Saves\Voice\%speech%.vbs"
echo speech.speak "%speech%" >> "GenesisFiles\Saves\Voice\%speech%.vbs"
start "%speech%" "GenesisFiles\Saves\Voice\%speech%.vbs"
echo Ok, you are %age% %year% old!
goto Genesis
:yaah2
tasklist /fi "imagename eq wscript.exe" |find ":" >nul
if errorlevel 1 taskkill /f /im "wscript.exe" >nul
set speech=You are %age% %year% old.
if not exist "GenesisFiles" mkdir GenesisFiles
if not exist "GenesisFiles\Saves" mkdir GenesisFiles\Saves
if not exist "GenesisFiles\Saves\Voice" mkdir GenesisFiles\Saves\Voice
echo ' > "GenesisFiles\Saves\Voice\%speech%.vbs"
echo set speech = Wscript.CreateObject("SAPI.spVoice") >> "GenesisFiles\Saves\Voice\%speech%.vbs"
echo set speech.Voice = speech.GetVoices.Item(1) >> "GenesisFiles\Saves\Voice\%speech%.vbs"
echo speech.speak "%speech%" >> "GenesisFiles\Saves\Voice\%speech%.vbs"
start "%speech%" "GenesisFiles\Saves\Voice\%speech%.vbs"
echo You are %age% %year% old.
goto Genesis
:!changeage
set answer=enter
tasklist /fi "imagename eq wscript.exe" |find ":" >nul
if errorlevel 1 taskkill /f /im "wscript.exe" >nul
set speech=How old are you
if not exist "GenesisFiles" mkdir GenesisFiles
if not exist "GenesisFiles\Saves" mkdir GenesisFiles\Saves
if not exist "GenesisFiles\Saves\Voice" mkdir GenesisFiles\Saves\Voice
echo ' > "GenesisFiles\Saves\Voice\%speech%.vbs"
echo set speech = Wscript.CreateObject("SAPI.spVoice") >> "GenesisFiles\Saves\Voice\%speech%.vbs"
echo set speech.Voice = speech.GetVoices.Item(1) >> "GenesisFiles\Saves\Voice\%speech%.vbs"
echo speech.speak "%speech%" >> "GenesisFiles\Saves\Voice\%speech%.vbs"
start "%speech%" "GenesisFiles\Saves\Voice\%speech%.vbs"
echo How old are you?
echo (Or enter m to go back.)
echo.
:askselectuage
echo.
set /p answer=Age:
if "%answer%"=="m" goto Genesis
if "%answer%"=="M" goto Genesis
if "%answer%"=="1" goto changeagei
if "%answer%"=="2" goto changeagei
if "%answer%"=="3" goto changeagei
if "%answer%"=="4" goto changeagei
if "%answer%"=="5" goto changeagei
if "%answer%"=="6" goto changeagei
if "%answer%"=="7" goto changeagei
if "%answer%"=="8" goto changeagei
if "%answer%"=="9" goto changeagei
if "%answer%"=="10" goto changeagei
if "%answer%"=="11" goto changeagei
if "%answer%"=="12" goto changeagei
if "%answer%"=="13" goto changeagei
if "%answer%"=="14" goto changeagei
if "%answer%"=="15" goto changeagei
if "%answer%"=="16" goto changeagei
if "%answer%"=="17" goto changeagei
if "%answer%"=="18" goto changeagei
if "%answer%"=="19" goto changeagei
if "%answer%"=="20" goto changeagei
if "%answer%"=="21" goto changeagei
if "%answer%"=="22" goto changeagei
if "%answer%"=="23" goto changeagei
if "%answer%"=="24" goto changeagei
if "%answer%"=="25" goto changeagei
if "%answer%"=="26" goto changeagei
if "%answer%"=="27" goto changeagei
if "%answer%"=="28" goto changeagei
if "%answer%"=="29" goto changeagei
if "%answer%"=="30" goto changeagei
if "%answer%"=="31" goto changeagei
if "%answer%"=="32" goto changeagei
if "%answer%"=="33" goto changeagei
if "%answer%"=="34" goto changeagei
if "%answer%"=="35" goto changeagei
if "%answer%"=="36" goto changeagei
if "%answer%"=="37" goto changeagei
if "%answer%"=="38" goto changeagei
if "%answer%"=="39" goto changeagei
if "%answer%"=="40" goto changeagei
if "%answer%"=="41" goto changeagei
if "%answer%"=="42" goto changeagei
if "%answer%"=="43" goto changeagei
if "%answer%"=="44" goto changeagei
if "%answer%"=="45" goto changeagei
if "%answer%"=="46" goto changeagei
if "%answer%"=="47" goto changeagei
if "%answer%"=="48" goto changeagei
if "%answer%"=="49" goto changeagei
if "%answer%"=="50" goto changeagei
if "%answer%"=="51" goto changeagei
if "%answer%"=="52" goto changeagei
if "%answer%"=="53" goto changeagei
if "%answer%"=="54" goto changeagei
if "%answer%"=="55" goto changeagei
if "%answer%"=="56" goto changeagei
if "%answer%"=="57" goto changeagei
if "%answer%"=="58" goto changeagei
if "%answer%"=="59" goto changeagei
if "%answer%"=="60" goto changeagei
if "%answer%"=="61" goto changeagei
if "%answer%"=="62" goto changeagei
if "%answer%"=="63" goto changeagei
if "%answer%"=="64" goto changeagei
if "%answer%"=="65" goto changeagei
if "%answer%"=="66" goto changeagei
if "%answer%"=="67" goto changeagei
if "%answer%"=="68" goto changeagei
if "%answer%"=="69" goto changeagei
if "%answer%"=="70" goto changeagei
if "%answer%"=="71" goto changeagei
if "%answer%"=="72" goto changeagei
if "%answer%"=="73" goto changeagei
if "%answer%"=="74" goto changeagei
if "%answer%"=="75" goto changeagei
if "%answer%"=="76" goto changeagei
if "%answer%"=="77" goto changeagei
if "%answer%"=="78" goto changeagei
if "%answer%"=="79" goto changeagei
if "%answer%"=="80" goto changeagei
if "%answer%"=="81" goto changeagei
if "%answer%"=="82" goto changeagei
if "%answer%"=="83" goto changeagei
if "%answer%"=="84" goto changeagei
if "%answer%"=="85" goto changeagei
if "%answer%"=="86" goto changeagei
if "%answer%"=="87" goto changeagei
if "%answer%"=="88" goto changeagei
if "%answer%"=="89" goto changeagei
if "%answer%"=="90" goto changeagei
if "%answer%"=="91" goto changeagei
if "%answer%"=="92" goto changeagei
if "%answer%"=="93" goto changeagei
if "%answer%"=="94" goto changeagei
if "%answer%"=="95" goto changeagei
if "%answer%"=="96" goto changeagei
if "%answer%"=="97" goto changeagei
if "%answer%"=="98" goto changeagei
if "%answer%"=="99" goto changeagei
if "%answer%"=="100" goto changeagei
if "%answer%"=="101" goto changeagei
if "%answer%"=="102" goto changeagei
echo That is an invalid age! Try again.
goto selectuage
:!teach
if "%teachw%"=="1" goto teachgenesis1
if "%teachw%"=="0" goto teachgenesiswarn
:teachgenesiswarn
tasklist /fi "imagename eq wscript.exe" |find ":" >nul
if errorlevel 1 taskkill /f /im "wscript.exe" >nul
if not exist "GenesisFiles" mkdir GenesisFiles
if not exist "GenesisFiles\Saves" mkdir GenesisFiles\Saves
if not exist "GenesisFiles\Saves\Voice" mkdir GenesisFiles\Saves\Voice
echo ' > "GenesisFiles\Saves\Voice\teachgenesiswarnvoice.vbs"
echo set speech = Wscript.CreateObject("SAPI.spVoice") >> "GenesisFiles\Saves\Voice\teachgenesiswarnvoice.vbs"
echo set speech.Voice = speech.GetVoices.Item(1) >> "GenesisFiles\Saves\Voice\teachgenesiswarnvoice.vbs"
echo speech.speak "With the teach function, you can teach me anything about a certain thing! Like if you type a word/sentence that you haven't told me about yet, then you are able to type what that word/sentence means! Example. You type, cars, then type, a transporting vehicle! That way, when you type learn at the start and type cars again, I will say, a transporting vehicle! If you decide to give a different definition of something, just type the same thing you wanted to teach me about again. That way you'll be able to retype the definition." >> "GenesisFiles\Saves\Voice\teachgenesiswarnvoice.vbs"
start "teachgenesiswarnvoice" "GenesisFiles\Saves\Voice\teachgenesiswarnvoice.vbs"
echo With the teach function, you can teach me anything about a 
echo certain thing! Like if you type a word/sentence that you 
echo haven't told me about yet, then you are able to type
echo what that word/sentence means! 
echo Ex. You type, 'cars', then type 'a transporting vehicle'! 
echo That way, when you type 'learn' at the start and type 'cars'
echo again, I will say, 'a transporting vehicle'!
echo If you decide to give a different definition of something,
echo just type the same thing you wanted to teach me about again.
echo That way you'll be able to retype the definition.
echo.
pause
tasklist /fi "imagename eq wscript.exe" |find ":" >nul
if errorlevel 1 taskkill /f /im "wscript.exe" >nul
echo.
:makesavfile6
set teachw=1
if not exist "GenesisFiles" mkdir GenesisFiles
if not exist "GenesisFiles\Saves" mkdir GenesisFiles\Saves
if not exist "GenesisFiles\Saves\Accounts" mkdir GenesisFiles\Saves\Accounts
(
echo %pass%
echo %name%
echo %warn%
echo %coco%
echo %pre%
echo %hage%
echo %age%
echo %year%
echo %teachw%
echo %learnw%
) > "GenesisFiles\Saves\Accounts\%username%.sav"
:teachgenesis1
set line=0
set teachg=Enter
tasklist /fi "imagename eq wscript.exe" |find ":" >nul
if errorlevel 1 taskkill /f /im "wscript.exe" >nul
set speech=What do you want me to learn about
if not exist "GenesisFiles" mkdir GenesisFiles
if not exist "GenesisFiles\Saves" mkdir GenesisFiles\Saves
if not exist "GenesisFiles\Saves\Voice" mkdir GenesisFiles\Saves\Voice
echo ' > "GenesisFiles\Saves\Voice\%speech%.vbs"
echo set speech = Wscript.CreateObject("SAPI.spVoice") >> "GenesisFiles\Saves\Voice\%speech%.vbs"
echo set speech.Voice = speech.GetVoices.Item(1) >> "GenesisFiles\Saves\Voice\%speech%.vbs"
echo speech.speak "%speech%" >> "GenesisFiles\Saves\Voice\%speech%.vbs"
start "%speech%" "GenesisFiles\Saves\Voice\%speech%.vbs"
echo What do you want me to learn about?
echo (You can't use question marks.)
echo Or enter m to go back to start.
echo.
set /p teachg=Teach:
set teachg=%teachg:?=%
set teachg=%teachg::=%
if "%teachg%"=="m" goto Genesis
if "%teachg%"=="M" goto Genesis
:teach2
set about=.
tasklist /fi "imagename eq wscript.exe" |find ":" >nul
if errorlevel 1 taskkill /f /im "wscript.exe" >nul
set speech=Tell me about %teachg%.
if not exist "GenesisFiles" mkdir GenesisFiles
if not exist "GenesisFiles\Saves" mkdir GenesisFiles\Saves
if not exist "GenesisFiles\Saves\Voice" mkdir GenesisFiles\Saves\Voice
echo ' > "GenesisFiles\Saves\Voice\%speech%.vbs"
echo set speech = Wscript.CreateObject("SAPI.spVoice") >> "GenesisFiles\Saves\Voice\%speech%.vbs"
echo set speech.Voice = speech.GetVoices.Item(1) >> "GenesisFiles\Saves\Voice\%speech%.vbs"
echo speech.speak "%speech%" >> "GenesisFiles\Saves\Voice\%speech%.vbs"
start "%speech%" "GenesisFiles\Saves\Voice\%speech%.vbs"
echo Tell me about %teachg%.
echo (Or enter m to go back to start and not teach about this.)
echo.
set /p about=About %teachg%:
if "%about%"=="m" goto ntathing
if "%about%"=="M" goto ntathing
if not exist "GenesisFiles" mkdir GenesisFiles
if not exist "GenesisFiles\Saves" mkdir GenesisFiles\Saves
if not exist "GenesisFiles\Saves\Learnings" mkdir GenesisFiles\Saves\Learnings
if not exist "GenesisFiles\Saves\Learnings\%teachg%" mkdir "GenesisFiles\Saves\Learnings\%teachg%"
echo %about% >"GenesisFiles\Saves\Learnings\%teachg%\about.sav"
:teachnknow
echo.
tasklist /fi "imagename eq wscript.exe" |find ":" >nul
if errorlevel 1 taskkill /f /im "wscript.exe" >nul
set speech=I now know about %teachg%!
if not exist "GenesisFiles" mkdir GenesisFiles
if not exist "GenesisFiles\Saves" mkdir GenesisFiles\Saves
if not exist "GenesisFiles\Saves\Voice" mkdir GenesisFiles\Saves\Voice
echo ' > "GenesisFiles\Saves\Voice\%speech%.vbs"
echo set speech = Wscript.CreateObject("SAPI.spVoice") >> "GenesisFiles\Saves\Voice\%speech%.vbs"
echo set speech.Voice = speech.GetVoices.Item(1) >> "GenesisFiles\Saves\Voice\%speech%.vbs"
echo speech.speak "%speech%" >> "GenesisFiles\Saves\Voice\%speech%.vbs"
start "%speech%" "GenesisFiles\Saves\Voice\%speech%.vbs"
echo I now know about %teachg%!
goto Genesis
:ntathing
tasklist /fi "imagename eq wscript.exe" |find ":" >nul
if errorlevel 1 taskkill /f /im "wscript.exe" >nul
set speech=I have not been taught about %teachg%.
if not exist "GenesisFiles" mkdir GenesisFiles
if not exist "GenesisFiles\Saves" mkdir GenesisFiles\Saves
if not exist "GenesisFiles\Saves\Voice" mkdir GenesisFiles\Saves\Voice
echo ' > "GenesisFiles\Saves\Voice\%speech%.vbs"
echo set speech = Wscript.CreateObject("SAPI.spVoice") >> "GenesisFiles\Saves\Voice\%speech%.vbs"
echo set speech.Voice = speech.GetVoices.Item(1) >> "GenesisFiles\Saves\Voice\%speech%.vbs"
echo speech.speak "%speech%" >> "GenesisFiles\Saves\Voice\%speech%.vbs"
start "%speech%" "GenesisFiles\Saves\Voice\%speech%.vbs"
echo I have not been taught about %teachg%.
goto Genesis
:!learn
if "%learnw%"=="0" goto learngenesiswarn
if "%learnw%"=="1" goto learngenesis1
:learngenesiswarn
tasklist /fi "imagename eq wscript.exe" |find ":" >nul
if errorlevel 1 taskkill /f /im "wscript.exe" >nul
set speech=learngenesiswarnvoice
if not exist "GenesisFiles" mkdir GenesisFiles
if not exist "GenesisFiles\Saves" mkdir GenesisFiles\Saves
if not exist "GenesisFiles\Saves\Voice" mkdir GenesisFiles\Saves\Voice
echo ' > "GenesisFiles\Saves\Voice\learngenesiswarnvoice.vbs"
echo set speech = Wscript.CreateObject("SAPI.spVoice") >> "GenesisFiles\Saves\Voice\learngenesiswarnvoice.vbs"
echo set speech.Voice = speech.GetVoices.Item(1) >> "GenesisFiles\Saves\Voice\learngenesiswarnvoice.vbs"
echo speech.speak "With the learn function, I can teach you what you've already taught me. If there's something you've taught me with the teach command, you can learn it here from me! If you haven't already taught me something, then I will tell you so. Reminder, Type exactly what you taught me." >> "GenesisFiles\Saves\Voice\learngenesiswarnvoice.vbs"
start "learngenesiswarnvoice" "GenesisFiles\Saves\Voice\learngenesiswarnvoice.vbs"
echo With the learn function, I can teach you what you've already
echo taught me. If there's something you've taught me with the
echo teach command, you can learn it here from me! If you haven't 
echo already taught me something, then I will tell you so.
echo Reminder: Type exactly what you taught me.
echo.
pause
tasklist /fi "imagename eq wscript.exe" |find ":" >nul
if errorlevel 1 taskkill /f /im "wscript.exe" >nul
echo.
:makesavfile7
set learnw=1
if not exist "GenesisFiles" mkdir GenesisFiles
if not exist "GenesisFiles\Saves" mkdir GenesisFiles\Saves
if not exist "GenesisFiles\Saves\Accounts" mkdir GenesisFiles\Saves\Accounts
(
echo %pass%
echo %name%
echo %warn%
echo %coco%
echo %pre%
echo %hage%
echo %age%
echo %year%
echo %teachw%
echo %learnw%
) > "GenesisFiles\Saves\Accounts\%username%.sav"
goto learngenesis1
:learngenesis1
if not exist "GenesisFiles\Saves\Learnings" goto notclearna
tasklist /fi "imagename eq wscript.exe" |find ":" >nul
if errorlevel 1 taskkill /f /im "wscript.exe" >nul
set speech=What would you like to learn about
if not exist "GenesisFiles" mkdir GenesisFiles
if not exist "GenesisFiles\Saves" mkdir GenesisFiles\Saves
if not exist "GenesisFiles\Saves\Voice" mkdir GenesisFiles\Saves\Voice
echo ' > "GenesisFiles\Saves\Voice\%speech%.vbs"
echo set speech = Wscript.CreateObject("SAPI.spVoice") >> "GenesisFiles\Saves\Voice\%speech%.vbs"
echo set speech.Voice = speech.GetVoices.Item(1) >> "GenesisFiles\Saves\Voice\%speech%.vbs"
echo speech.speak "%speech%" >> "GenesisFiles\Saves\Voice\%speech%.vbs"
start "%speech%" "GenesisFiles\Saves\Voice\%speech%.vbs"
echo What would you like to learn about?
echo (Or enter m to go to start.)
echo.
echo Things that you've taught me about:
dir /b "GenesisFiles\Saves\Learnings"
echo.
:learngenesis1ask
set teachg=Enter
set /p teachg=Learn:
set teachg=%teachg:?=%
set teachg=%teachg::=%
if "%teachg%"=="m" goto Genesis
if "%teachg%"=="M" goto Genesis
if not exist "GenesisFiles\Saves\Learnings\%teachg%" goto notclearn
goto teachuser
:notclearn
tasklist /fi "imagename eq wscript.exe" |find ":" >nul
if errorlevel 1 taskkill /f /im "wscript.exe" >nul
set speech=I have not been taught about that yet.
if not exist "GenesisFiles" mkdir GenesisFiles
if not exist "GenesisFiles\Saves" mkdir GenesisFiles\Saves
if not exist "GenesisFiles\Saves\Voice" mkdir GenesisFiles\Saves\Voice
echo ' > "GenesisFiles\Saves\Voice\%speech%.vbs"
echo set speech = Wscript.CreateObject("SAPI.spVoice") >> "GenesisFiles\Saves\Voice\%speech%.vbs"
echo set speech.Voice = speech.GetVoices.Item(1) >> "GenesisFiles\Saves\Voice\%speech%.vbs"
echo speech.speak "%speech%" >> "GenesisFiles\Saves\Voice\%speech%.vbs"
start "%speech%" "GenesisFiles\Saves\Voice\%speech%.vbs"
echo I have not been taught about that yet.
echo.
:learngenesis1ask2
echo What would you like to learn about?
echo (Or enter m to go to start.)
echo.
set teachg=Enter
set /p teachg=Learn:
set teachg=%teachg:?=%
set teachg=%teachg::=%
if "%teachg%"=="m" goto Genesis
if "%teachg%"=="M" goto Genesis
if not exist "GenesisFiles\Saves\Learnings\%teachg%" goto notclearn
goto teachuser
:notclearna
tasklist /fi "imagename eq wscript.exe" |find ":" >nul
if errorlevel 1 taskkill /f /im "wscript.exe" >nul
set speech=I haven't been taught anything yet! Would you like to teach me something, or go back to start
if not exist "GenesisFiles" mkdir GenesisFiles
if not exist "GenesisFiles\Saves" mkdir GenesisFiles\Saves
if not exist "GenesisFiles\Saves\Voice" mkdir GenesisFiles\Saves\Voice
echo ' > "GenesisFiles\Saves\Voice\%speech%.vbs"
echo set speech = Wscript.CreateObject("SAPI.spVoice") >> "GenesisFiles\Saves\Voice\%speech%.vbs"
echo set speech.Voice = speech.GetVoices.Item(1) >> "GenesisFiles\Saves\Voice\%speech%.vbs"
echo speech.speak "%speech%" >> "GenesisFiles\Saves\Voice\%speech%.vbs"
start "%speech%" "GenesisFiles\Saves\Voice\%speech%.vbs"
echo I haven't been taught anything yet!
echo Would you like to teach me something, or go back to start?
echo (Enter t to teach, or m to go back to start.)
echo.
:notclearnaask
set /p answer=T/M:
if "%answer%"=="t" goto !teach
if "%answer%"=="T" goto !teach
if "%answer%"=="M" goto Genesis
if "%answer%"=="m" goto Genesis
echo.
goto notclearnaask
:teachuser
set /p about=<"GenesisFiles\Saves\Learnings\%teachg%\about.sav"
set aboutf=%about%
set aboutf=%aboutf:?=%
set aboutf=%aboutf::=%
tasklist /fi "imagename eq wscript.exe" |find ":" >nul
if errorlevel 1 taskkill /f /im "wscript.exe" >nul
set speech=About %teachg%, %aboutf%
if not exist "GenesisFiles" mkdir GenesisFiles
if not exist "GenesisFiles\Saves" mkdir GenesisFiles\Saves
if not exist "GenesisFiles\Saves\Voice" mkdir GenesisFiles\Saves\Voice
echo ' > "GenesisFiles\Saves\Voice\%speech%.vbs"
echo set speech = Wscript.CreateObject("SAPI.spVoice") >> "GenesisFiles\Saves\Voice\%speech%.vbs"
echo set speech.Voice = speech.GetVoices.Item(1) >> "GenesisFiles\Saves\Voice\%speech%.vbs"
echo speech.speak "%speech%" >> "GenesisFiles\Saves\Voice\%speech%.vbs"
start "%speech%" "GenesisFiles\Saves\Voice\%speech%.vbs"
echo About %teachg%:
echo %about%
goto Genesis
:!forget
if not exist "GenesisFiles\Saves\Learnings" goto nothingtf
tasklist /fi "imagename eq wscript.exe" |find ":" >nul
if errorlevel 1 taskkill /f /im "wscript.exe" >nul
set speech=Would you like me to forget everything you taught me, or forget a specific thing
if not exist "GenesisFiles" mkdir GenesisFiles
if not exist "GenesisFiles\Saves" mkdir GenesisFiles\Saves
if not exist "GenesisFiles\Saves\Voice" mkdir GenesisFiles\Saves\Voice
echo ' > "GenesisFiles\Saves\Voice\%speech%.vbs"
echo set speech = Wscript.CreateObject("SAPI.spVoice") >> "GenesisFiles\Saves\Voice\%speech%.vbs"
echo set speech.Voice = speech.GetVoices.Item(1) >> "GenesisFiles\Saves\Voice\%speech%.vbs"
echo speech.speak "%speech%" >> "GenesisFiles\Saves\Voice\%speech%.vbs"
start "%speech%" "GenesisFiles\Saves\Voice\%speech%.vbs"
echo Would you like me to forget everything you taught me,
echo or forget a specific thing?
echo (Enter e to forget everything, or enter s for specific thing)
echo Or enter m to go back to start.
echo.
echo Current things I know about:
dir /b GenesisFiles\Saves\Learnings
echo.
:forgetask
set answer=Enter
set /p answer=E/S/M:
if "%answer%"=="m" goto Genesis
if "%answer%"=="M" goto Genesis
if "%answer%"=="e" goto forgete
if "%answer%"=="s" goto forgets
if "%answer%"=="E" goto forgete
if "%answer%"=="S" goto forgets
echo.
goto forgetask
:nothingtf
tasklist /fi "imagename eq wscript.exe" |find ":" >nul
if errorlevel 1 taskkill /f /im "wscript.exe" >nul
set speech=I haven't been taught anything, so there's nothing to forget!
if not exist "GenesisFiles" mkdir GenesisFiles
if not exist "GenesisFiles\Saves" mkdir GenesisFiles\Saves
if not exist "GenesisFiles\Saves\Voice" mkdir GenesisFiles\Saves\Voice
echo ' > "GenesisFiles\Saves\Voice\%speech%.vbs"
echo set speech = Wscript.CreateObject("SAPI.spVoice") >> "GenesisFiles\Saves\Voice\%speech%.vbs"
echo set speech.Voice = speech.GetVoices.Item(1) >> "GenesisFiles\Saves\Voice\%speech%.vbs"
echo speech.speak "%speech%" >> "GenesisFiles\Saves\Voice\%speech%.vbs"
start "%speech%" "GenesisFiles\Saves\Voice\%speech%.vbs"
echo I haven't been taught anything, so there's nothing to forget!
echo.
goto Genesis
:forgete
tasklist /fi "imagename eq wscript.exe" |find ":" >nul
if errorlevel 1 taskkill /f /im "wscript.exe" >nul
set speech=Are you sure you want me to forget all that you've taught me
if not exist "GenesisFiles" mkdir GenesisFiles
if not exist "GenesisFiles\Saves" mkdir GenesisFiles\Saves
if not exist "GenesisFiles\Saves\Voice" mkdir GenesisFiles\Saves\Voice
echo ' > "GenesisFiles\Saves\Voice\%speech%.vbs"
echo set speech = Wscript.CreateObject("SAPI.spVoice") >> "GenesisFiles\Saves\Voice\%speech%.vbs"
echo set speech.Voice = speech.GetVoices.Item(1) >> "GenesisFiles\Saves\Voice\%speech%.vbs"
echo speech.speak "%speech%" >> "GenesisFiles\Saves\Voice\%speech%.vbs"
start "%speech%" "GenesisFiles\Saves\Voice\%speech%.vbs"
echo Are you sure you want me to forget all that you've taught me?
echo.
set /p answer=Y/N:
if "%answer%"=="no" goto !forget
if "%answer%"=="No" goto !forget
if "%answer%"=="yes" goto forgetef
if "%answer%"=="Yes" goto forgetef
if "%answer%"=="n" goto !forget
if "%answer%"=="N" goto !forget
if "%answer%"=="y" goto forgetef
if "%answer%"=="Y" goto forgetef
goto forgete
:forgetef
rmdir /s /q "GenesisFiles\Saves\Learnings"
tasklist /fi "imagename eq wscript.exe" |find ":" >nul
if errorlevel 1 taskkill /f /im "wscript.exe" >nul
set speech=I've successfully forgotten about all that you've taught me!
if not exist "GenesisFiles" mkdir GenesisFiles
if not exist "GenesisFiles\Saves" mkdir GenesisFiles\Saves
if not exist "GenesisFiles\Saves\Voice" mkdir GenesisFiles\Saves\Voice
echo ' > "GenesisFiles\Saves\Voice\%speech%.vbs"
echo set speech = Wscript.CreateObject("SAPI.spVoice") >> "GenesisFiles\Saves\Voice\%speech%.vbs"
echo set speech.Voice = speech.GetVoices.Item(1) >> "GenesisFiles\Saves\Voice\%speech%.vbs"
echo speech.speak "%speech%" >> "GenesisFiles\Saves\Voice\%speech%.vbs"
start "%speech%" "GenesisFiles\Saves\Voice\%speech%.vbs"
echo I've successfully forgotten about all that you've taught me!
echo.
goto Genesis
:forgets
tasklist /fi "imagename eq wscript.exe" |find ":" >nul
if errorlevel 1 taskkill /f /im "wscript.exe" >nul
set speech=What would you like me to forget about
if not exist "GenesisFiles" mkdir GenesisFiles
if not exist "GenesisFiles\Saves" mkdir GenesisFiles\Saves
if not exist "GenesisFiles\Saves\Voice" mkdir GenesisFiles\Saves\Voice
echo ' > "GenesisFiles\Saves\Voice\%speech%.vbs"
echo set speech = Wscript.CreateObject("SAPI.spVoice") >> "GenesisFiles\Saves\Voice\%speech%.vbs"
echo set speech.Voice = speech.GetVoices.Item(1) >> "GenesisFiles\Saves\Voice\%speech%.vbs"
echo speech.speak "%speech%" >> "GenesisFiles\Saves\Voice\%speech%.vbs"
start "%speech%" "GenesisFiles\Saves\Voice\%speech%.vbs"
echo What would you like me to forget about?
echo (Or enter m to go back to start.)
echo.
echo Current things I know about:
dir /b GenesisFiles\Saves\Learnings
echo.
:forgetsask
set ttfot=Enter
set /p ttfor=%pre%
set ttfor=%ttfor:?=%
set ttfor=%ttfor::=%
if "%ttfor%"=="m" goto Genesis
if "%ttfor%"=="M" goto Genesis
if not exist "GenesisFiles\Saves\Learnings\%ttfor%" goto nothingtfs
rmdir /s /q "GenesisFiles\Saves\Learnings\%ttfor%"
tasklist /fi "imagename eq wscript.exe" |find ":" >nul
if errorlevel 1 taskkill /f /im "wscript.exe" >nul
set speech=I've successfully forgotten about %ttfor%!
if not exist "GenesisFiles" mkdir GenesisFiles
if not exist "GenesisFiles\Saves" mkdir GenesisFiles\Saves
if not exist "GenesisFiles\Saves\Voice" mkdir GenesisFiles\Saves\Voice
echo ' > "GenesisFiles\Saves\Voice\%speech%.vbs"
echo set speech = Wscript.CreateObject("SAPI.spVoice") >> "GenesisFiles\Saves\Voice\%speech%.vbs"
echo set speech.Voice = speech.GetVoices.Item(1) >> "GenesisFiles\Saves\Voice\%speech%.vbs"
echo speech.speak "%speech%" >> "GenesisFiles\Saves\Voice\%speech%.vbs"
start "%speech%" "GenesisFiles\Saves\Voice\%speech%.vbs"
echo I've successfully forgotten about %ttfor%!
echo.
timeout 4 >nul
goto !forget
:nothingtfs
tasklist /fi "imagename eq wscript.exe" |find ":" >nul
if errorlevel 1 taskkill /f /im "wscript.exe" >nul
set speech=I've never been taught about %ttfor%!
if not exist "GenesisFiles" mkdir GenesisFiles
if not exist "GenesisFiles\Saves" mkdir GenesisFiles\Saves
if not exist "GenesisFiles\Saves\Voice" mkdir GenesisFiles\Saves\Voice
echo ' > "GenesisFiles\Saves\Voice\%speech%.vbs"
echo set speech = Wscript.CreateObject("SAPI.spVoice") >> "GenesisFiles\Saves\Voice\%speech%.vbs"
echo set speech.Voice = speech.GetVoices.Item(1) >> "GenesisFiles\Saves\Voice\%speech%.vbs"
echo speech.speak "%speech%" >> "GenesisFiles\Saves\Voice\%speech%.vbs"
start "%speech%" "GenesisFiles\Saves\Voice\%speech%.vbs"
echo I've never been taught about %ttfor%!
echo.
timeout 4 >nul
goto forgets
:!c_var
(
set /p pass=
set /p name=
set /p warn=
set /p coco=
set /p pre=
set /p hage=
set /p age=
set /p year=
set /p teachw=
set /p learnw=
) < "GenesisFiles\Saves\Accounts\%username%.sav"
color %coco%
tasklist /fi "imagename eq wscript.exe" |find ":" >nul
if errorlevel 1 taskkill /f /im "wscript.exe" >nul
set speech=What variable would you like to change
if not exist "GenesisFiles" mkdir GenesisFiles
if not exist "GenesisFiles\Saves" mkdir GenesisFiles\Saves
if not exist "GenesisFiles\Saves\Voice" mkdir GenesisFiles\Saves\Voice
echo ' > "GenesisFiles\Saves\Voice\%speech%.vbs"
echo set speech = Wscript.CreateObject("SAPI.spVoice") >> "GenesisFiles\Saves\Voice\%speech%.vbs"
echo set speech.Voice = speech.GetVoices.Item(1) >> "GenesisFiles\Saves\Voice\%speech%.vbs"
echo speech.speak "%speech%" >> "GenesisFiles\Saves\Voice\%speech%.vbs"
start "%speech%" "GenesisFiles\Saves\Voice\%speech%.vbs"
echo Going off of username: %username%
echo (This is a developer tool, use at your own risk.)
echo What variable would you like to change?
echo (Or enter m to go back to start.)
echo.
echo pass = %pass%
echo name = %name%
echo warn = %warn%
echo coco = %coco%
echo pre = %pre%
echo hage = %hage%
echo age = %age%
echo year = %year%
echo teachw = %teachw%
echo learnw = %learnw%
echo.
:cvarask
set answer=Enter
set /p answer=Variable:
if "%answer%"=="m" goto Genesis
if "%answer%"=="M" goto Genesis
if "%answer%"=="pass" goto changevarpass
if "%answer%"=="name" goto changevarname
if "%answer%"=="warn" goto changevarwarn
if "%answer%"=="coco" goto changevarcoco
if "%answer%"=="pre" goto changevarpre
if "%answer%"=="hage" goto changevarhage
if "%answer%"=="age" goto changevarage
if "%answer%"=="year" goto changevaryear
if "%answer%"=="teachw" goto changevarteachw
if "%answer%"=="learnw" goto changevarlearnw
goto invcvar
:invcvar
tasklist /fi "imagename eq wscript.exe" |find ":" >nul
if errorlevel 1 taskkill /f /im "wscript.exe" >nul
set speech=That's an invalid variable!
if not exist "GenesisFiles" mkdir GenesisFiles
if not exist "GenesisFiles\Saves" mkdir GenesisFiles\Saves
if not exist "GenesisFiles\Saves\Voice" mkdir GenesisFiles\Saves\Voice
echo ' > "GenesisFiles\Saves\Voice\%speech%.vbs"
echo set speech = Wscript.CreateObject("SAPI.spVoice") >> "GenesisFiles\Saves\Voice\%speech%.vbs"
echo set speech.Voice = speech.GetVoices.Item(1) >> "GenesisFiles\Saves\Voice\%speech%.vbs"
echo speech.speak "%speech%" >> "GenesisFiles\Saves\Voice\%speech%.vbs"
start "%speech%" "GenesisFiles\Saves\Voice\%speech%.vbs"
echo That's an invalid variable!
echo.
goto cvarask
:changevarpass
set pass=Enter
tasklist /fi "imagename eq wscript.exe" |find ":" >nul
if errorlevel 1 taskkill /f /im "wscript.exe" >nul
set speech=What would you like to set the variable, pass
if not exist "GenesisFiles" mkdir GenesisFiles
if not exist "GenesisFiles\Saves" mkdir GenesisFiles\Saves
if not exist "GenesisFiles\Saves\Voice" mkdir GenesisFiles\Saves\Voice
echo ' > "GenesisFiles\Saves\Voice\%speech%.vbs"
echo set speech = Wscript.CreateObject("SAPI.spVoice") >> "GenesisFiles\Saves\Voice\%speech%.vbs"
echo set speech.Voice = speech.GetVoices.Item(1) >> "GenesisFiles\Saves\Voice\%speech%.vbs"
echo speech.speak "%speech%" >> "GenesisFiles\Saves\Voice\%speech%.vbs"
start "%speech%" "GenesisFiles\Saves\Voice\%speech%.vbs"
echo What would you like to set the variable:
echo pass
echo.
set /p pass=%pre%
set passf=%pass%
set passf=%passf::=%
set passf=%passf:?=%
tasklist /fi "imagename eq wscript.exe" |find ":" >nul
if errorlevel 1 taskkill /f /im "wscript.exe" >nul
set speech=Variable pass set to %passf%
if not exist "GenesisFiles" mkdir GenesisFiles
if not exist "GenesisFiles\Saves" mkdir GenesisFiles\Saves
if not exist "GenesisFiles\Saves\Voice" mkdir GenesisFiles\Saves\Voice
echo ' > "GenesisFiles\Saves\Voice\%speech%.vbs"
echo set speech = Wscript.CreateObject("SAPI.spVoice") >> "GenesisFiles\Saves\Voice\%speech%.vbs"
echo set speech.Voice = speech.GetVoices.Item(1) >> "GenesisFiles\Saves\Voice\%speech%.vbs"
echo speech.speak "%speech%" >> "GenesisFiles\Saves\Voice\%speech%.vbs"
start "%speech%" "GenesisFiles\Saves\Voice\%speech%.vbs"
echo Variable 'pass' set to %pass%
timeout 4 >nul
goto makesavfile8
:changevarname
set name=Enter
tasklist /fi "imagename eq wscript.exe" |find ":" >nul
if errorlevel 1 taskkill /f /im "wscript.exe" >nul
set speech=What would you like to set the variable, name
if not exist "GenesisFiles" mkdir GenesisFiles
if not exist "GenesisFiles\Saves" mkdir GenesisFiles\Saves
if not exist "GenesisFiles\Saves\Voice" mkdir GenesisFiles\Saves\Voice
echo ' > "GenesisFiles\Saves\Voice\%speech%.vbs"
echo set speech = Wscript.CreateObject("SAPI.spVoice") >> "GenesisFiles\Saves\Voice\%speech%.vbs"
echo set speech.Voice = speech.GetVoices.Item(1) >> "GenesisFiles\Saves\Voice\%speech%.vbs"
echo speech.speak "%speech%" >> "GenesisFiles\Saves\Voice\%speech%.vbs"
start "%speech%" "GenesisFiles\Saves\Voice\%speech%.vbs"
echo What would you like to set the variable:
echo name
echo.
set /p name=%pre%
set namef=%name%
set namef=%namef::=%
set namef=%namef:?=%
tasklist /fi "imagename eq wscript.exe" |find ":" >nul
if errorlevel 1 taskkill /f /im "wscript.exe" >nul
set speech=Variable name set to %namef%
if not exist "GenesisFiles" mkdir GenesisFiles
if not exist "GenesisFiles\Saves" mkdir GenesisFiles\Saves
if not exist "GenesisFiles\Saves\Voice" mkdir GenesisFiles\Saves\Voice
echo ' > "GenesisFiles\Saves\Voice\%speech%.vbs"
echo set speech = Wscript.CreateObject("SAPI.spVoice") >> "GenesisFiles\Saves\Voice\%speech%.vbs"
echo set speech.Voice = speech.GetVoices.Item(1) >> "GenesisFiles\Saves\Voice\%speech%.vbs"
echo speech.speak "%speech%" >> "GenesisFiles\Saves\Voice\%speech%.vbs"
start "%speech%" "GenesisFiles\Saves\Voice\%speech%.vbs"
echo Variable 'name' set to %name%
timeout 4 >nul
goto makesavfile8
:changevarwarn
set warn=Enter
tasklist /fi "imagename eq wscript.exe" |find ":" >nul
if errorlevel 1 taskkill /f /im "wscript.exe" >nul
set speech=What would you like to set the variable, warn
if not exist "GenesisFiles" mkdir GenesisFiles
if not exist "GenesisFiles\Saves" mkdir GenesisFiles\Saves
if not exist "GenesisFiles\Saves\Voice" mkdir GenesisFiles\Saves\Voice
echo ' > "GenesisFiles\Saves\Voice\%speech%.vbs"
echo set speech = Wscript.CreateObject("SAPI.spVoice") >> "GenesisFiles\Saves\Voice\%speech%.vbs"
echo set speech.Voice = speech.GetVoices.Item(1) >> "GenesisFiles\Saves\Voice\%speech%.vbs"
echo speech.speak "%speech%" >> "GenesisFiles\Saves\Voice\%speech%.vbs"
start "%speech%" "GenesisFiles\Saves\Voice\%speech%.vbs"
echo What would you like to set the variable:
echo warn
echo.
set /p warn=%pre%
set warnf=%warn%
set warnf=%warnf::=%
set warnf=%warnf:?=%
tasklist /fi "imagename eq wscript.exe" |find ":" >nul
if errorlevel 1 taskkill /f /im "wscript.exe" >nul
set speech=Variable warn set to %warnf%
if not exist "GenesisFiles" mkdir GenesisFiles
if not exist "GenesisFiles\Saves" mkdir GenesisFiles\Saves
if not exist "GenesisFiles\Saves\Voice" mkdir GenesisFiles\Saves\Voice
echo ' > "GenesisFiles\Saves\Voice\%speech%.vbs"
echo set speech = Wscript.CreateObject("SAPI.spVoice") >> "GenesisFiles\Saves\Voice\%speech%.vbs"
echo set speech.Voice = speech.GetVoices.Item(1) >> "GenesisFiles\Saves\Voice\%speech%.vbs"
echo speech.speak "%speech%" >> "GenesisFiles\Saves\Voice\%speech%.vbs"
start "%speech%" "GenesisFiles\Saves\Voice\%speech%.vbs"
echo Variable 'warn' set to %warn%
timeout 3 >nul
goto makesavfile8
:changevarcoco
tasklist /fi "imagename eq wscript.exe" |find ":" >nul
if errorlevel 1 taskkill /f /im "wscript.exe" >nul
set speech=What would you like to set the variable, coco
if not exist "GenesisFiles" mkdir GenesisFiles
if not exist "GenesisFiles\Saves" mkdir GenesisFiles\Saves
if not exist "GenesisFiles\Saves\Voice" mkdir GenesisFiles\Saves\Voice
echo ' > "GenesisFiles\Saves\Voice\%speech%.vbs"
echo set speech = Wscript.CreateObject("SAPI.spVoice") >> "GenesisFiles\Saves\Voice\%speech%.vbs"
echo set speech.Voice = speech.GetVoices.Item(1) >> "GenesisFiles\Saves\Voice\%speech%.vbs"
echo speech.speak "%speech%" >> "GenesisFiles\Saves\Voice\%speech%.vbs"
start "%speech%" "GenesisFiles\Saves\Voice\%speech%.vbs"
set coco=Enter
echo What would you like to set the variable:
echo coco
echo.
set /p coco=%pre%
set cocof=%coco%
set cocof=%cocof::=%
set cocof=%cocof:?=%
tasklist /fi "imagename eq wscript.exe" |find ":" >nul
if errorlevel 1 taskkill /f /im "wscript.exe" >nul
set speech=Variable coco set to %cocof%
if not exist "GenesisFiles" mkdir GenesisFiles
if not exist "GenesisFiles\Saves" mkdir GenesisFiles\Saves
if not exist "GenesisFiles\Saves\Voice" mkdir GenesisFiles\Saves\Voice
echo ' > "GenesisFiles\Saves\Voice\%speech%.vbs"
echo set speech = Wscript.CreateObject("SAPI.spVoice") >> "GenesisFiles\Saves\Voice\%speech%.vbs"
echo set speech.Voice = speech.GetVoices.Item(1) >> "GenesisFiles\Saves\Voice\%speech%.vbs"
echo speech.speak "%speech%" >> "GenesisFiles\Saves\Voice\%speech%.vbs"
start "%speech%" "GenesisFiles\Saves\Voice\%speech%.vbs"
color %coco%
echo Variable 'coco' set to %coco%
timeout 3 >nul
goto makesavfile8
:changevarpre
set prepre=%pre%
set pre=Enter
tasklist /fi "imagename eq wscript.exe" |find ":" >nul
if errorlevel 1 taskkill /f /im "wscript.exe" >nul
set speech=What would you like to set the variable, pre
if not exist "GenesisFiles" mkdir GenesisFiles
if not exist "GenesisFiles\Saves" mkdir GenesisFiles\Saves
if not exist "GenesisFiles\Saves\Voice" mkdir GenesisFiles\Saves\Voice
echo ' > "GenesisFiles\Saves\Voice\%speech%.vbs"
echo set speech = Wscript.CreateObject("SAPI.spVoice") >> "GenesisFiles\Saves\Voice\%speech%.vbs"
echo set speech.Voice = speech.GetVoices.Item(1) >> "GenesisFiles\Saves\Voice\%speech%.vbs"
echo speech.speak "%speech%" >> "GenesisFiles\Saves\Voice\%speech%.vbs"
start "%speech%" "GenesisFiles\Saves\Voice\%speech%.vbs"
echo What would you like to set the variable:
echo pre
echo.
set /p pre=%prepre%
set pref=%pre%
set pref=%pref::=%
set pref=%pref:?=%
tasklist /fi "imagename eq wscript.exe" |find ":" >nul
if errorlevel 1 taskkill /f /im "wscript.exe" >nul
set speech=Variable pre set to %pref%
if not exist "GenesisFiles" mkdir GenesisFiles
if not exist "GenesisFiles\Saves" mkdir GenesisFiles\Saves
if not exist "GenesisFiles\Saves\Voice" mkdir GenesisFiles\Saves\Voice
echo ' > "GenesisFiles\Saves\Voice\%speech%.vbs"
echo set speech = Wscript.CreateObject("SAPI.spVoice") >> "GenesisFiles\Saves\Voice\%speech%.vbs"
echo set speech.Voice = speech.GetVoices.Item(1) >> "GenesisFiles\Saves\Voice\%speech%.vbs"
echo speech.speak "%speech%" >> "GenesisFiles\Saves\Voice\%speech%.vbs"
start "%speech%" "GenesisFiles\Saves\Voice\%speech%.vbs"
echo Variable 'pre' set to %pre%
timeout 3 >nul
goto makesavfile8
:changevarhage
set hage=Enter
tasklist /fi "imagename eq wscript.exe" |find ":" >nul
if errorlevel 1 taskkill /f /im "wscript.exe" >nul
set speech=What would you like to set the variable, hage
if not exist "GenesisFiles" mkdir GenesisFiles
if not exist "GenesisFiles\Saves" mkdir GenesisFiles\Saves
if not exist "GenesisFiles\Saves\Voice" mkdir GenesisFiles\Saves\Voice
echo ' > "GenesisFiles\Saves\Voice\%speech%.vbs"
echo set speech = Wscript.CreateObject("SAPI.spVoice") >> "GenesisFiles\Saves\Voice\%speech%.vbs"
echo set speech.Voice = speech.GetVoices.Item(1) >> "GenesisFiles\Saves\Voice\%speech%.vbs"
echo speech.speak "%speech%" >> "GenesisFiles\Saves\Voice\%speech%.vbs"
start "%speech%" "GenesisFiles\Saves\Voice\%speech%.vbs"
echo What would you like to set the variable:
echo hage
echo.
set /p hage=%pre%
set hagef=%hage%
set hagef=%hagef::=%
set hagef=%hagef:?=%
tasklist /fi "imagename eq wscript.exe" |find ":" >nul
if errorlevel 1 taskkill /f /im "wscript.exe" >nul
set speech=Variable hage set to %hagef%
if not exist "GenesisFiles" mkdir GenesisFiles
if not exist "GenesisFiles\Saves" mkdir GenesisFiles\Saves
if not exist "GenesisFiles\Saves\Voice" mkdir GenesisFiles\Saves\Voice
echo ' > "GenesisFiles\Saves\Voice\%speech%.vbs"
echo set speech = Wscript.CreateObject("SAPI.spVoice") >> "GenesisFiles\Saves\Voice\%speech%.vbs"
echo set speech.Voice = speech.GetVoices.Item(1) >> "GenesisFiles\Saves\Voice\%speech%.vbs"
echo speech.speak "%speech%" >> "GenesisFiles\Saves\Voice\%speech%.vbs"
start "%speech%" "GenesisFiles\Saves\Voice\%speech%.vbs"
echo Variable 'hage' set to %hage%
timeout 3 >nul
goto makesavfile8
:changevarage
set age=Enter
tasklist /fi "imagename eq wscript.exe" |find ":" >nul
if errorlevel 1 taskkill /f /im "wscript.exe" >nul
set speech=What would you like to set the variable, age
if not exist "GenesisFiles" mkdir GenesisFiles
if not exist "GenesisFiles\Saves" mkdir GenesisFiles\Saves
if not exist "GenesisFiles\Saves\Voice" mkdir GenesisFiles\Saves\Voice
echo ' > "GenesisFiles\Saves\Voice\%speech%.vbs"
echo set speech = Wscript.CreateObject("SAPI.spVoice") >> "GenesisFiles\Saves\Voice\%speech%.vbs"
echo set speech.Voice = speech.GetVoices.Item(1) >> "GenesisFiles\Saves\Voice\%speech%.vbs"
echo speech.speak "%speech%" >> "GenesisFiles\Saves\Voice\%speech%.vbs"
start "%speech%" "GenesisFiles\Saves\Voice\%speech%.vbs"
echo What would you like to set the variable:
echo age
echo.
set /p age=%pre%
set agef=%age%
set agef=%agef::=%
set agef=%agef:?=%
tasklist /fi "imagename eq wscript.exe" |find ":" >nul
if errorlevel 1 taskkill /f /im "wscript.exe" >nul
set speech=Variable age set to %agef%
if not exist "GenesisFiles" mkdir GenesisFiles
if not exist "GenesisFiles\Saves" mkdir GenesisFiles\Saves
if not exist "GenesisFiles\Saves\Voice" mkdir GenesisFiles\Saves\Voice
echo ' > "GenesisFiles\Saves\Voice\%speech%.vbs"
echo set speech = Wscript.CreateObject("SAPI.spVoice") >> "GenesisFiles\Saves\Voice\%speech%.vbs"
echo set speech.Voice = speech.GetVoices.Item(1) >> "GenesisFiles\Saves\Voice\%speech%.vbs"
echo speech.speak "%speech%" >> "GenesisFiles\Saves\Voice\%speech%.vbs"
start "%speech%" "GenesisFiles\Saves\Voice\%speech%.vbs"
echo Variable 'age' set to %age%
timeout 3 >nul
goto makesavfile8
:changevaryear
set year=Enter
tasklist /fi "imagename eq wscript.exe" |find ":" >nul
if errorlevel 1 taskkill /f /im "wscript.exe" >nul
set speech=What would you like to set the variable, year
if not exist "GenesisFiles" mkdir GenesisFiles
if not exist "GenesisFiles\Saves" mkdir GenesisFiles\Saves
if not exist "GenesisFiles\Saves\Voice" mkdir GenesisFiles\Saves\Voice
echo ' > "GenesisFiles\Saves\Voice\%speech%.vbs"
echo set speech = Wscript.CreateObject("SAPI.spVoice") >> "GenesisFiles\Saves\Voice\%speech%.vbs"
echo set speech.Voice = speech.GetVoices.Item(1) >> "GenesisFiles\Saves\Voice\%speech%.vbs"
echo speech.speak "%speech%" >> "GenesisFiles\Saves\Voice\%speech%.vbs"
start "%speech%" "GenesisFiles\Saves\Voice\%speech%.vbs"
echo What would you like to set the variable:
echo year
echo.
set /p year=%pre%
set yearf=%year%
set yearf=%yearf::=%
set yearf=%yearf:?=%
tasklist /fi "imagename eq wscript.exe" |find ":" >nul
if errorlevel 1 taskkill /f /im "wscript.exe" >nul
set speech=Variable year set to %yearf%
if not exist "GenesisFiles" mkdir GenesisFiles
if not exist "GenesisFiles\Saves" mkdir GenesisFiles\Saves
if not exist "GenesisFiles\Saves\Voice" mkdir GenesisFiles\Saves\Voice
echo ' > "GenesisFiles\Saves\Voice\%speech%.vbs"
echo set speech = Wscript.CreateObject("SAPI.spVoice") >> "GenesisFiles\Saves\Voice\%speech%.vbs"
echo set speech.Voice = speech.GetVoices.Item(1) >> "GenesisFiles\Saves\Voice\%speech%.vbs"
echo speech.speak "%speech%" >> "GenesisFiles\Saves\Voice\%speech%.vbs"
start "%speech%" "GenesisFiles\Saves\Voice\%speech%.vbs"
echo Variable 'year' set to %year%
timeout 3 >nul
goto makesavfile8
:changevarteachw
set teachw=Enter
tasklist /fi "imagename eq wscript.exe" |find ":" >nul
if errorlevel 1 taskkill /f /im "wscript.exe" >nul
set speech=What would you like to set the variable, teachw
if not exist "GenesisFiles" mkdir GenesisFiles
if not exist "GenesisFiles\Saves" mkdir GenesisFiles\Saves
if not exist "GenesisFiles\Saves\Voice" mkdir GenesisFiles\Saves\Voice
echo ' > "GenesisFiles\Saves\Voice\%speech%.vbs"
echo set speech = Wscript.CreateObject("SAPI.spVoice") >> "GenesisFiles\Saves\Voice\%speech%.vbs"
echo set speech.Voice = speech.GetVoices.Item(1) >> "GenesisFiles\Saves\Voice\%speech%.vbs"
echo speech.speak "%speech%" >> "GenesisFiles\Saves\Voice\%speech%.vbs"
start "%speech%" "GenesisFiles\Saves\Voice\%speech%.vbs"
echo What would you like to set the variable:
echo teachw
echo.
set /p teachw=%pre%
set teachwf=%teachw%
set teachwf=%teachwf::=%
set teachwf=%teachwf:?=%
tasklist /fi "imagename eq wscript.exe" |find ":" >nul
if errorlevel 1 taskkill /f /im "wscript.exe" >nul
set speech=Variable teachw set to %teachwf%
if not exist "GenesisFiles" mkdir GenesisFiles
if not exist "GenesisFiles\Saves" mkdir GenesisFiles\Saves
if not exist "GenesisFiles\Saves\Voice" mkdir GenesisFiles\Saves\Voice
echo ' > "GenesisFiles\Saves\Voice\%speech%.vbs"
echo set speech = Wscript.CreateObject("SAPI.spVoice") >> "GenesisFiles\Saves\Voice\%speech%.vbs"
echo set speech.Voice = speech.GetVoices.Item(1) >> "GenesisFiles\Saves\Voice\%speech%.vbs"
echo speech.speak "%speech%" >> "GenesisFiles\Saves\Voice\%speech%.vbs"
start "%speech%" "GenesisFiles\Saves\Voice\%speech%.vbs"
echo Variable 'teachw' set to %teachw%
timeout 3 >nul
goto makesavfile8
:changevarlearnw
set learnw=Enter
tasklist /fi "imagename eq wscript.exe" |find ":" >nul
if errorlevel 1 taskkill /f /im "wscript.exe" >nul
set speech=What would you like to set the variable, learnw
if not exist "GenesisFiles" mkdir GenesisFiles
if not exist "GenesisFiles\Saves" mkdir GenesisFiles\Saves
if not exist "GenesisFiles\Saves\Voice" mkdir GenesisFiles\Saves\Voice
echo ' > "GenesisFiles\Saves\Voice\%speech%.vbs"
echo set speech = Wscript.CreateObject("SAPI.spVoice") >> "GenesisFiles\Saves\Voice\%speech%.vbs"
echo set speech.Voice = speech.GetVoices.Item(1) >> "GenesisFiles\Saves\Voice\%speech%.vbs"
echo speech.speak "%speech%" >> "GenesisFiles\Saves\Voice\%speech%.vbs"
start "%speech%" "GenesisFiles\Saves\Voice\%speech%.vbs"
echo What would you like to set the variable:
echo learnw
echo.
set /p learnw=%pre%
set learnwf=%learnw%
set learnwf=%learnwf::=%
set learnwf=%learnwf:?=%
tasklist /fi "imagename eq wscript.exe" |find ":" >nul
if errorlevel 1 taskkill /f /im "wscript.exe" >nul
set speech=Variable learnw set to %learnwf%
if not exist "GenesisFiles" mkdir GenesisFiles
if not exist "GenesisFiles\Saves" mkdir GenesisFiles\Saves
if not exist "GenesisFiles\Saves\Voice" mkdir GenesisFiles\Saves\Voice
echo ' > "GenesisFiles\Saves\Voice\%speech%.vbs"
echo set speech = Wscript.CreateObject("SAPI.spVoice") >> "GenesisFiles\Saves\Voice\%speech%.vbs"
echo set speech.Voice = speech.GetVoices.Item(1) >> "GenesisFiles\Saves\Voice\%speech%.vbs"
echo speech.speak "%speech%" >> "GenesisFiles\Saves\Voice\%speech%.vbs"
start "%speech%" "GenesisFiles\Saves\Voice\%speech%.vbs"
echo Variable 'learnw' set to %learnw%
timeout 3 >nul
goto makesavfile8
:makesavfile8
echo.
if not exist "GenesisFiles" mkdir GenesisFiles
if not exist "GenesisFiles\Saves" mkdir GenesisFiles\Saves
if not exist "GenesisFiles\Saves\Accounts" mkdir GenesisFiles\Saves\Accounts
(
echo %pass%
echo %name%
echo %warn%
echo %coco%
echo %pre%
echo %hage%
echo %age%
echo %year%
echo %teachw%
echo %learnw%
) > "GenesisFiles\Saves\Accounts\%username%.sav"
:c_var2
(
set /p pass=
set /p name=
set /p warn=
set /p coco=
set /p pre=
set /p hage=
set /p age=
set /p year=
set /p teachw=
set /p learnw=
) < "GenesisFiles\Saves\Accounts\%username%.sav"
tasklist /fi "imagename eq wscript.exe" |find ":" >nul
if errorlevel 1 taskkill /f /im "wscript.exe" >nul
set speech=What variable would you like to change
if not exist "GenesisFiles" mkdir GenesisFiles
if not exist "GenesisFiles\Saves" mkdir GenesisFiles\Saves
if not exist "GenesisFiles\Saves\Voice" mkdir GenesisFiles\Saves\Voice
echo ' > "GenesisFiles\Saves\Voice\%speech%.vbs"
echo set speech = Wscript.CreateObject("SAPI.spVoice") >> "GenesisFiles\Saves\Voice\%speech%.vbs"
echo set speech.Voice = speech.GetVoices.Item(1) >> "GenesisFiles\Saves\Voice\%speech%.vbs"
echo speech.speak "%speech%" >> "GenesisFiles\Saves\Voice\%speech%.vbs"
start "%speech%" "GenesisFiles\Saves\Voice\%speech%.vbs"
echo What variable would you like to change?
echo (Or enter m to go back to start.)
echo.
echo pass = %pass%
echo name = %name%
echo warn = %warn%
echo coco = %coco%
echo pre = %pre%
echo hage = %hage%
echo age = %age%
echo year = %year%
echo teachw = %teachw%
echo learnw = %learnw%
echo.
set answer=Enter
set /p answer=Variable:
if "%answer%"=="m" goto Genesis
if "%answer%"=="M" goto Genesis
if "%answer%"=="pass" goto changevarpass
if "%answer%"=="name" goto changevarname
if "%answer%"=="warn" goto changevarwarn
if "%answer%"=="coco" goto changevarcoco
if "%answer%"=="pre" goto changevarpre
if "%answer%"=="hage" goto changevarhage
if "%answer%"=="age" goto changevarage
if "%answer%"=="year" goto changevaryear
if "%answer%"=="teachw" goto changevarteachw
if "%answer%"=="learnw" goto changevarlearnw
:invcar2
tasklist /fi "imagename eq wscript.exe" |find ":" >nul
if errorlevel 1 taskkill /f /im "wscript.exe" >nul
set speech=That's an invalid variable!
if not exist "GenesisFiles" mkdir GenesisFiles
if not exist "GenesisFiles\Saves" mkdir GenesisFiles\Saves
if not exist "GenesisFiles\Saves\Voice" mkdir GenesisFiles\Saves\Voice
echo ' > "GenesisFiles\Saves\Voice\%speech%.vbs"
echo set speech = Wscript.CreateObject("SAPI.spVoice") >> "GenesisFiles\Saves\Voice\%speech%.vbs"
echo set speech.Voice = speech.GetVoices.Item(1) >> "GenesisFiles\Saves\Voice\%speech%.vbs"
echo speech.speak "%speech%" >> "GenesisFiles\Saves\Voice\%speech%.vbs"
start "%speech%" "GenesisFiles\Saves\Voice\%speech%.vbs"
echo That's an invalid variable!
echo.
goto c_var2
:!shop
set shop=Enter
tasklist /fi "imagename eq wscript.exe" |find ":" >nul
if errorlevel 1 taskkill /f /im "wscript.exe" >nul
set speech=Where would you like to go shopping. Example. Amazon
if not exist "GenesisFiles" mkdir GenesisFiles
if not exist "GenesisFiles\Saves" mkdir GenesisFiles\Saves
if not exist "GenesisFiles\Saves\Voice" mkdir GenesisFiles\Saves\Voice
echo ' > "GenesisFiles\Saves\Voice\%speech%.vbs"
echo set speech = Wscript.CreateObject("SAPI.spVoice") >> "GenesisFiles\Saves\Voice\%speech%.vbs"
echo set speech.Voice = speech.GetVoices.Item(1) >> "GenesisFiles\Saves\Voice\%speech%.vbs"
echo speech.speak "%speech%" >> "GenesisFiles\Saves\Voice\%speech%.vbs"
start "%speech%" "GenesisFiles\Saves\Voice\%speech%.vbs"
echo Where would you like to go shopping?
echo (ex. Amazon)
echo Or enter m to go back.
echo.
set /p shop=Shop:
if "%shop%"=="m" goto Genesis
if "%shop%"=="M" goto Genesis
start www.%shop%.com
goto Genesis
:!let'sgoshopping
goto !shop
:!let'sgoshopping!
goto !shop
:!let'sgoshopping.
goto !shop
:!iwanttogoshopping
goto !shop
:!iwanttogoshopping!
goto !shop
:!iwanttogoshopping.
goto !shop
:!iwanttoshop
goto !shop
:!iwanttoshop!
goto !shop
:!iwanttoshop.
goto !shop
:!openashoppingwebsite
goto !shop
:!openashoppingwebsite!
goto !shop
:!openashoppingwebsite.
goto !shop
:!openshoppingwebsite
goto !shop
:!openshoppingwebsite!
goto !shop
:!openshoppingwebsite.
goto !shop
:!echo
set echo=Enter
tasklist /fi "imagename eq wscript.exe" |find ":" >nul
if errorlevel 1 taskkill /f /im "wscript.exe" >nul
set speech=What do you want me to repeat
if not exist "GenesisFiles" mkdir GenesisFiles
if not exist "GenesisFiles\Saves" mkdir GenesisFiles\Saves
if not exist "GenesisFiles\Saves\Voice" mkdir GenesisFiles\Saves\Voice
echo ' > "GenesisFiles\Saves\Voice\%speech%.vbs"
echo set speech = Wscript.CreateObject("SAPI.spVoice") >> "GenesisFiles\Saves\Voice\%speech%.vbs"
echo set speech.Voice = speech.GetVoices.Item(1) >> "GenesisFiles\Saves\Voice\%speech%.vbs"
echo speech.speak "%speech%" >> "GenesisFiles\Saves\Voice\%speech%.vbs"
start "%speech%" "GenesisFiles\Saves\Voice\%speech%.vbs"
echo What do you want me to repeat?
echo.
set /p echo=Echo:
set echof=%echo%
set echof=%echof::=%
set echof=%echof:?=%
tasklist /fi "imagename eq wscript.exe" |find ":" >nul
if errorlevel 1 taskkill /f /im "wscript.exe" >nul
set speech=%echof%
if not exist "GenesisFiles" mkdir GenesisFiles
if not exist "GenesisFiles\Saves" mkdir GenesisFiles\Saves
if not exist "GenesisFiles\Saves\Voice" mkdir GenesisFiles\Saves\Voice
echo ' > "GenesisFiles\Saves\Voice\%speech%.vbs"
echo set speech = Wscript.CreateObject("SAPI.spVoice") >> "GenesisFiles\Saves\Voice\%speech%.vbs"
echo set speech.Voice = speech.GetVoices.Item(1) >> "GenesisFiles\Saves\Voice\%speech%.vbs"
echo speech.speak "%speech%" >> "GenesisFiles\Saves\Voice\%speech%.vbs"
start "%speech%" "GenesisFiles\Saves\Voice\%speech%.vbs"
echo %echo%
goto Genesis
:!openclose
tasklist /fi "imagename eq wscript.exe" |find ":" >nul
if errorlevel 1 taskkill /f /im "wscript.exe" >nul
set speech=Enter the app that you want to open, or enter b to go back.
if not exist "GenesisFiles" mkdir GenesisFiles
if not exist "GenesisFiles\Saves" mkdir GenesisFiles\Saves
if not exist "GenesisFiles\Saves\Voice" mkdir GenesisFiles\Saves\Voice
echo ' > "GenesisFiles\Saves\Voice\%speech%.vbs"
echo set speech = Wscript.CreateObject("SAPI.spVoice") >> "GenesisFiles\Saves\Voice\%speech%.vbs"
echo set speech.Voice = speech.GetVoices.Item(1) >> "GenesisFiles\Saves\Voice\%speech%.vbs"
echo speech.speak "%speech%" >> "GenesisFiles\Saves\Voice\%speech%.vbs"
start "%speech%" "GenesisFiles\Saves\Voice\%speech%.vbs"
if not exist "GenesisFiles" mkdir GenesisFiles
if not exist "GenesisFiles\Apps" mkdir GenesisFiles\Apps
set app=enter
echo Enter the app that you want to open, or enter b to go back.
echo (Any app you want opened has to be placed in the Apps folder)
echo (Apps folder is located in the GenesisFiles folder)
echo (Some things require extensions. ex. .txt)
echo.
set /p app=%pre%
if "%app%"=="b" goto Genesis
if "%app%"=="B" goto Genesis
start "%app%" "GenesisFiles\Apps\%app%"
rmdir /s /q GenesisFiles\Saves\Voice
exit
:!changepass
tasklist /fi "imagename eq wscript.exe" |find ":" >nul
if errorlevel 1 taskkill /f /im "wscript.exe" >nul
set speech=What would you like to set the new password as
if not exist "GenesisFiles" mkdir GenesisFiles
if not exist "GenesisFiles\Saves" mkdir GenesisFiles\Saves
if not exist "GenesisFiles\Saves\Voice" mkdir GenesisFiles\Saves\Voice
echo ' > "GenesisFiles\Saves\Voice\%speech%.vbs"
echo set speech = Wscript.CreateObject("SAPI.spVoice") >> "GenesisFiles\Saves\Voice\%speech%.vbs"
echo set speech.Voice = speech.GetVoices.Item(1) >> "GenesisFiles\Saves\Voice\%speech%.vbs"
echo speech.speak "%speech%" >> "GenesisFiles\Saves\Voice\%speech%.vbs"
start "%speech%" "GenesisFiles\Saves\Voice\%speech%.vbs"
echo The current password is: %pass%
echo What would you like to set the new password as?
echo (Or enter m to go back to start.)
:changepassask
echo.
set fpass=Enter
set /p fpass=New password:
set fpassf=%fpass%
set fpassf=%fpassf::=%
set fpassf=%fpassf:?=%
if "%fpass%"=="m" goto Genesis
if "%fpass%"=="M" goto Genesis
if "%fpass%"=="b" goto changepassask
if "%fpass%"=="B" goto changepassask
if "%fpass%"=="%pass%" goto AUPASS
goto changepass2
:AUPASS
tasklist /fi "imagename eq wscript.exe" |find ":" >nul
if errorlevel 1 taskkill /f /im "wscript.exe" >nul
set speech=Your password is already set as %fpassf%. Try again.
if not exist "GenesisFiles" mkdir GenesisFiles
if not exist "GenesisFiles\Saves" mkdir GenesisFiles\Saves
if not exist "GenesisFiles\Saves\Voice" mkdir GenesisFiles\Saves\Voice
echo ' > "GenesisFiles\Saves\Voice\%speech%.vbs"
echo set speech = Wscript.CreateObject("SAPI.spVoice") >> "GenesisFiles\Saves\Voice\%speech%.vbs"
echo set speech.Voice = speech.GetVoices.Item(1) >> "GenesisFiles\Saves\Voice\%speech%.vbs"
echo speech.speak "%speech%" >> "GenesisFiles\Saves\Voice\%speech%.vbs"
start "%speech%" "GenesisFiles\Saves\Voice\%speech%.vbs"
echo Your password is already set as: %pass%
echo Try again.
goto changepassask
:changepass2
tasklist /fi "imagename eq wscript.exe" |find ":" >nul
if errorlevel 1 taskkill /f /im "wscript.exe" >nul
set speech=Are you sure that you want your new password set as %fpassf%
if not exist "GenesisFiles" mkdir GenesisFiles
if not exist "GenesisFiles\Saves" mkdir GenesisFiles\Saves
if not exist "GenesisFiles\Saves\Voice" mkdir GenesisFiles\Saves\Voice
echo ' > "GenesisFiles\Saves\Voice\%speech%.vbs"
echo set speech = Wscript.CreateObject("SAPI.spVoice") >> "GenesisFiles\Saves\Voice\%speech%.vbs"
echo set speech.Voice = speech.GetVoices.Item(1) >> "GenesisFiles\Saves\Voice\%speech%.vbs"
echo speech.speak "%speech%" >> "GenesisFiles\Saves\Voice\%speech%.vbs"
start "%speech%" "GenesisFiles\Saves\Voice\%speech%.vbs"
echo Are you sure that you want your new password set as
echo %fpass%?
echo.
set /p answer=Y/N:
if "%answer%"=="yes" goto settpass
if "%answer%"=="no" goto !changepass
if "%answer%"=="Yes" goto settpass
if "%answer%"=="No" goto !changepass
if "%answer%"=="y" goto settpass
if "%answer%"=="n" goto !changepass
if "%answer%"=="Y" goto settpass
if "%answer%"=="N" goto !changepass
goto changepass2
:settpass
set pass=%fpass%
:makesavfile9
if not exist "GenesisFiles" mkdir GenesisFiles
if not exist "GenesisFiles\Saves" mkdir GenesisFiles\Saves
if not exist "GenesisFiles\Saves\Accounts" mkdir GenesisFiles\Saves\Accounts
(
echo %pass%
echo %name%
echo %warn%
echo %coco%
echo %pre%
echo %hage%
echo %age%
echo %year%
echo %teachw%
echo %learnw%
) > "GenesisFiles\Saves\Accounts\%username%.sav"
tasklist /fi "imagename eq wscript.exe" |find ":" >nul
if errorlevel 1 taskkill /f /im "wscript.exe" >nul
set speech=Password successfully changed!
if not exist "GenesisFiles" mkdir GenesisFiles
if not exist "GenesisFiles\Saves" mkdir GenesisFiles\Saves
if not exist "GenesisFiles\Saves\Voice" mkdir GenesisFiles\Saves\Voice
echo ' > "GenesisFiles\Saves\Voice\%speech%.vbs"
echo set speech = Wscript.CreateObject("SAPI.spVoice") >> "GenesisFiles\Saves\Voice\%speech%.vbs"
echo set speech.Voice = speech.GetVoices.Item(1) >> "GenesisFiles\Saves\Voice\%speech%.vbs"
echo speech.speak "%speech%" >> "GenesisFiles\Saves\Voice\%speech%.vbs"
start "%speech%" "GenesisFiles\Saves\Voice\%speech%.vbs"
echo.
echo Password successfully changed!
goto Genesis
:!logout
tasklist /fi "imagename eq wscript.exe" |find ":" >nul
if errorlevel 1 taskkill /f /im "wscript.exe" >nul
set speech=Are you sure you want to sign out of the account, %username%
if not exist "GenesisFiles" mkdir GenesisFiles
if not exist "GenesisFiles\Saves" mkdir GenesisFiles\Saves
if not exist "GenesisFiles\Saves\Voice" mkdir GenesisFiles\Saves\Voice
echo ' > "GenesisFiles\Saves\Voice\%speech%.vbs"
echo set speech = Wscript.CreateObject("SAPI.spVoice") >> "GenesisFiles\Saves\Voice\%speech%.vbs"
echo set speech.Voice = speech.GetVoices.Item(1) >> "GenesisFiles\Saves\Voice\%speech%.vbs"
echo speech.speak "%speech%" >> "GenesisFiles\Saves\Voice\%speech%.vbs"
start "%speech%" "GenesisFiles\Saves\Voice\%speech%.vbs"
echo Are you sure you want to sign out of the account,
echo %username%?
echo.
:logoutask
set answer=Enter
set /p answer=Y/N:
if "%answer%"=="yes" goto logout2
if "%answer%"=="no" goto Genesis
if "%answer%"=="Yes" goto logout2
if "%answer%"=="No" goto Genesis
if "%answer%"=="y" goto logout2
if "%answer%"=="n" goto Genesis
if "%answer%"=="Y" goto logout2
if "%answer%"=="N" goto Genesis
echo.
goto logoutask
:logout2
if not exist "GenesisFiles" mkdir GenesisFiles
if not exist "GenesisFiles\Saves" mkdir GenesisFiles\Saves
if not exist "GenesisFiles\Saves\Accounts" mkdir GenesisFiles\Saves\Accounts
set username=Pending
set cuser=0
(
echo %username%
echo %cuser%
) > GenesisFiles\Saves\Accounts\cuset.sav
color 0A
tasklist /fi "imagename eq wscript.exe" |find ":" >nul
if errorlevel 1 taskkill /f /im "wscript.exe" >nul
set speech=Successfully logged out!
if not exist "GenesisFiles" mkdir GenesisFiles
if not exist "GenesisFiles\Saves" mkdir GenesisFiles\Saves
if not exist "GenesisFiles\Saves\Voice" mkdir GenesisFiles\Saves\Voice
echo ' > "GenesisFiles\Saves\Voice\%speech%.vbs"
echo set speech = Wscript.CreateObject("SAPI.spVoice") >> "GenesisFiles\Saves\Voice\%speech%.vbs"
echo set speech.Voice = speech.GetVoices.Item(1) >> "GenesisFiles\Saves\Voice\%speech%.vbs"
echo speech.speak "%speech%" >> "GenesisFiles\Saves\Voice\%speech%.vbs"
start "%speech%" "GenesisFiles\Saves\Voice\%speech%.vbs"
echo Successfully logged out!
echo.
timeout 3 >nul
goto RLRLRL
:!delaccount
tasklist /fi "imagename eq wscript.exe" |find ":" >nul
if errorlevel 1 taskkill /f /im "wscript.exe" >nul
set speech=Are you sure you want to delete the account, %username%
if not exist "GenesisFiles" mkdir GenesisFiles
if not exist "GenesisFiles\Saves" mkdir GenesisFiles\Saves
if not exist "GenesisFiles\Saves\Voice" mkdir GenesisFiles\Saves\Voice
echo ' > "GenesisFiles\Saves\Voice\%speech%.vbs"
echo set speech = Wscript.CreateObject("SAPI.spVoice") >> "GenesisFiles\Saves\Voice\%speech%.vbs"
echo set speech.Voice = speech.GetVoices.Item(1) >> "GenesisFiles\Saves\Voice\%speech%.vbs"
echo speech.speak "%speech%" >> "GenesisFiles\Saves\Voice\%speech%.vbs"
start "%speech%" "GenesisFiles\Saves\Voice\%speech%.vbs"
echo Are you sure you want to delete the account,
echo %username%?
echo.
:delaccountask
set answer=Enter
set /p answer=Y/N:
if "%answer%"=="yes" goto delaccount2
if "%answer%"=="no" goto Genesis
if "%answer%"=="Yes" goto delaccount2
if "%answer%"=="No" goto Genesis
if "%answer%"=="y" goto delaccount2
if "%answer%"=="n" goto Genesis
if "%answer%"=="Y" goto delaccount2
if "%answer%"=="N" goto Genesis
echo.
goto delaccountask
:delaccount2
del "GenesisFiles\Saves\Accounts\%username%.sav"
if not exist "GenesisFiles" mkdir GenesisFiles
if not exist "GenesisFiles\Saves" mkdir GenesisFiles\Saves
if not exist "GenesisFiles\Saves\Accounts" mkdir GenesisFiles\Saves\Accounts
set username=Pending
set cuser=0
(
echo %username%
echo %cuser%
) > GenesisFiles\Saves\Accounts\cuset.sav
color 0A
tasklist /fi "imagename eq wscript.exe" |find ":" >nul
if errorlevel 1 taskkill /f /im "wscript.exe" >nul
set speech=Account successfully deleted!
if not exist "GenesisFiles" mkdir GenesisFiles
if not exist "GenesisFiles\Saves" mkdir GenesisFiles\Saves
if not exist "GenesisFiles\Saves\Voice" mkdir GenesisFiles\Saves\Voice
echo ' > "GenesisFiles\Saves\Voice\%speech%.vbs"
echo set speech = Wscript.CreateObject("SAPI.spVoice") >> "GenesisFiles\Saves\Voice\%speech%.vbs"
echo set speech.Voice = speech.GetVoices.Item(1) >> "GenesisFiles\Saves\Voice\%speech%.vbs"
echo speech.speak "%speech%" >> "GenesisFiles\Saves\Voice\%speech%.vbs"
start "%speech%" "GenesisFiles\Saves\Voice\%speech%.vbs"
echo Account successfully deleted!
echo.
timeout 3 >nul
goto RLRES
:!changeuname
tasklist /fi "imagename eq wscript.exe" |find ":" >nul
if errorlevel 1 taskkill /f /im "wscript.exe" >nul
set speech=What would you like to set the new username as
if not exist "GenesisFiles" mkdir GenesisFiles
if not exist "GenesisFiles\Saves" mkdir GenesisFiles\Saves
if not exist "GenesisFiles\Saves\Voice" mkdir GenesisFiles\Saves\Voice
echo ' > "GenesisFiles\Saves\Voice\%speech%.vbs"
echo set speech = Wscript.CreateObject("SAPI.spVoice") >> "GenesisFiles\Saves\Voice\%speech%.vbs"
echo set speech.Voice = speech.GetVoices.Item(1) >> "GenesisFiles\Saves\Voice\%speech%.vbs"
echo speech.speak "%speech%" >> "GenesisFiles\Saves\Voice\%speech%.vbs"
start "%speech%" "GenesisFiles\Saves\Voice\%speech%.vbs"
echo The current username is: %username%
echo What would you like to set the new username as?
echo (You can't use question marks.)
echo Or enter m to go back to start.
:changeunameask
echo.
set usernameuc=Enter
set /p usernameuc=New username:
set usernameuc=%usernameuc:?=%
set usernameuc=%usernameuc::=%
if "%usernameuc%"=="m" goto Genesis
if "%usernameuc%"=="M" goto Genesis
if "%usernameuc%"=="b" goto changeunameask
if "%usernameuc%"=="B" goto changeunameask
if "%usernameuc%"=="cuset" goto changeunameask
if "%usernameuc%"=="CUSET" goto changeunameask
if "%usernameuc%"=="%username%" goto usernameiucc
if exist "GenesisFiles\Accounts\%usernameuc%.sav" goto UNAMETAKEN
:changeunamec
tasklist /fi "imagename eq wscript.exe" |find ":" >nul
if errorlevel 1 taskkill /f /im "wscript.exe" >nul
set speech=Are you sure that you want to change your username to %usernameuc%
if not exist "GenesisFiles" mkdir GenesisFiles
if not exist "GenesisFiles\Saves" mkdir GenesisFiles\Saves
if not exist "GenesisFiles\Saves\Voice" mkdir GenesisFiles\Saves\Voice
echo ' > "GenesisFiles\Saves\Voice\%speech%.vbs"
echo set speech = Wscript.CreateObject("SAPI.spVoice") >> "GenesisFiles\Saves\Voice\%speech%.vbs"
echo set speech.Voice = speech.GetVoices.Item(1) >> "GenesisFiles\Saves\Voice\%speech%.vbs"
echo speech.speak "%speech%" >> "GenesisFiles\Saves\Voice\%speech%.vbs"
start "%speech%" "GenesisFiles\Saves\Voice\%speech%.vbs"
echo.
echo Are you sure that you want to change your username to
echo %usernameuc%?
echo.
:changeunamecask
set answer=Enter
set /p answer=Y/N:
if "%answer%"=="yes" goto changeuname2
if "%answer%"=="no" goto !changeuname
if "%answer%"=="Yes" goto changeuname2
if "%answer%"=="No" goto !changeuname
if "%answer%"=="y" goto changeuname2
if "%answer%"=="n" goto !changeuname
if "%answer%"=="Y" goto changeuname2
if "%answer%"=="N" goto !changeuname
goto changeunamecask
:changeuname2
ren "GenesisFiles\Saves\Accounts\%username%.sav" "%usernameuc%.sav"
set username=%usernameuc%
(
echo %username%
echo %cuser%
) > "GenesisFiles\Saves\Accounts\cuset.sav"
tasklist /fi "imagename eq wscript.exe" |find ":" >nul
if errorlevel 1 taskkill /f /im "wscript.exe" >nul
set speech=Username successfully changed to %username%.
if not exist "GenesisFiles" mkdir GenesisFiles
if not exist "GenesisFiles\Saves" mkdir GenesisFiles\Saves
if not exist "GenesisFiles\Saves\Voice" mkdir GenesisFiles\Saves\Voice
echo ' > "GenesisFiles\Saves\Voice\%speech%.vbs"
echo set speech = Wscript.CreateObject("SAPI.spVoice") >> "GenesisFiles\Saves\Voice\%speech%.vbs"
echo set speech.Voice = speech.GetVoices.Item(1) >> "GenesisFiles\Saves\Voice\%speech%.vbs"
echo speech.speak "%speech%" >> "GenesisFiles\Saves\Voice\%speech%.vbs"
start "%speech%" "GenesisFiles\Saves\Voice\%speech%.vbs"
echo Username successfully changed to: %username%.
echo.
goto Genesis
:usernameiucc
echo.
tasklist /fi "imagename eq wscript.exe" |find ":" >nul
if errorlevel 1 taskkill /f /im "wscript.exe" >nul
set speech=The username, %username%, %username%, is already in use!
if not exist "GenesisFiles" mkdir GenesisFiles
if not exist "GenesisFiles\Saves" mkdir GenesisFiles\Saves
if not exist "GenesisFiles\Saves\Voice" mkdir GenesisFiles\Saves\Voice
echo ' > "GenesisFiles\Saves\Voice\%speech%.vbs"
echo set speech = Wscript.CreateObject("SAPI.spVoice") >> "GenesisFiles\Saves\Voice\%speech%.vbs"
echo set speech.Voice = speech.GetVoices.Item(1) >> "GenesisFiles\Saves\Voice\%speech%.vbs"
echo speech.speak "%speech%" >> "GenesisFiles\Saves\Voice\%speech%.vbs"
start "%speech%" "GenesisFiles\Saves\Voice\%speech%.vbs"
echo The username, %username%, is already in use!
echo Try again.
goto changeunameask
:UNAMETAKEN
echo.
tasklist /fi "imagename eq wscript.exe" |find ":" >nul
if errorlevel 1 taskkill /f /im "wscript.exe" >nul
set speech=The username, %usernameuc%, is already being used by another account! Try again.
if not exist "GenesisFiles" mkdir GenesisFiles
if not exist "GenesisFiles\Saves" mkdir GenesisFiles\Saves
if not exist "GenesisFiles\Saves\Voice" mkdir GenesisFiles\Saves\Voice
echo ' > "GenesisFiles\Saves\Voice\%speech%.vbs"
echo set speech = Wscript.CreateObject("SAPI.spVoice") >> "GenesisFiles\Saves\Voice\%speech%.vbs"
echo set speech.Voice = speech.GetVoices.Item(1) >> "GenesisFiles\Saves\Voice\%speech%.vbs"
echo speech.speak "%speech%" >> "GenesisFiles\Saves\Voice\%speech%.vbs"
start "%speech%" "GenesisFiles\Saves\Voice\%speech%.vbs"
echo The username, %usernameuc%, is already being used by
echo another account!
echo Try again.
goto changeunameask
:!chat
if not exist "GenesisFiles\Addons" mkdir GenesisFiles\Addons
if exist "GenesisFiles\Addons\ChatAddon.bat" goto chatstart
:NoAddonW
tasklist /fi "imagename eq wscript.exe" |find ":" >nul
if errorlevel 1 taskkill /f /im "wscript.exe" >nul
set speech=To use this function, you need to get the app, Chat Addon, and place it in the Addons folder. Would you like to go to the download link for the Chat Addon, or go back to start
if not exist "GenesisFiles" mkdir GenesisFiles
if not exist "GenesisFiles\Saves" mkdir GenesisFiles\Saves
if not exist "GenesisFiles\Saves\Voice" mkdir GenesisFiles\Saves\Voice
echo ' > "GenesisFiles\Saves\Voice\%speech%.vbs"
echo set speech = Wscript.CreateObject("SAPI.spVoice") >> "GenesisFiles\Saves\Voice\%speech%.vbs"
echo set speech.Voice = speech.GetVoices.Item(1) >> "GenesisFiles\Saves\Voice\%speech%.vbs"
echo speech.speak "%speech%" >> "GenesisFiles\Saves\Voice\%speech%.vbs"
start "%speech%" "GenesisFiles\Saves\Voice\%speech%.vbs"
echo To use this function, you need to get the app:
echo "ChatAddon"
echo And place it in the Addons folder.
echo (Located at GenesisFiles\Addons)
echo.
echo Download at:
echo http://www.mediafire.com/file/6lhpko66c5h868v/ChatAddon.bat/file
echo.
echo Would you like to go to the download link for the ChatAddon,
echo or go back to the start?
echo (Enter d to go to download link, or m to go back to start.)
echo.
:NoAddonWask
set answer=Enter
set /p answer=D/M:
if "%answer%"=="d" goto OpenDLink
if "%answer%"=="D" goto OpenDLink
if "%answer%"=="M" goto Genesis
if "%answer%"=="m" goto Genesis
echo.
goto NoAddonWask
:OpenDLink
start http://www.mediafire.com/file/6lhpko66c5h868v/ChatAddon.bat/file
goto Genesis
:chatstart
tasklist /fi "imagename eq wscript.exe" |find ":" >nul
if errorlevel 1 taskkill /f /im "wscript.exe" >nul
set speech=In the chat room, if you want to leave, enter m to go back to start.
if not exist "GenesisFiles" mkdir GenesisFiles
if not exist "GenesisFiles\Saves" mkdir GenesisFiles\Saves
if not exist "GenesisFiles\Saves\Voice" mkdir GenesisFiles\Saves\Voice
echo ' > "GenesisFiles\Saves\Voice\%speech%.vbs"
echo set speech = Wscript.CreateObject("SAPI.spVoice") >> "GenesisFiles\Saves\Voice\%speech%.vbs"
echo set speech.Voice = speech.GetVoices.Item(1) >> "GenesisFiles\Saves\Voice\%speech%.vbs"
echo speech.speak "%speech%" >> "GenesisFiles\Saves\Voice\%speech%.vbs"
start "%speech%" "GenesisFiles\Saves\Voice\%speech%.vbs"
echo In the chat room, if you want to leave,
echo enter m to go back to start.
echo.
timeout 5 >nul
rmdir /s /q GenesisFiles\Saves\Voice
start GenesisFiles\Addons\ChatAddon.bat
echo Loading...
echo.
timeout 1 >nul
title Genesis : Chatting as %username%
echo. >>GenesisFiles\Addons\chat.txt
echo %username% has joined the room >>GenesisFiles\Addons\chat.txt
echo. >>GenesisFiles\Addons\chat.txt
mode con: cols=54 lines=4
:readmessages
set chatinput=
cls
set /p chatinput=Message:
if "%chatinput%"=="" goto readmessages
if "%chatinput%"=="m" goto chatend
if "%chatinput%"=="M" goto chatend
echo %username%: %chatinput% >>GenesisFiles\Addons\chat.txt
goto readmessages
:chatend
del GenesisFiles\Addons\chat.txt
title Genesis
mode con: cols=61 lines=60
goto !clear
:!whatismyname
set namef=%name%
set namef=%namef:?=%
set namef=%namef::=%
tasklist /fi "imagename eq wscript.exe" |find ":" >nul
if errorlevel 1 taskkill /f /im "wscript.exe" >nul
set speech=Don't be silly %namef%. You should know your own name!
if not exist "GenesisFiles" mkdir GenesisFiles
if not exist "GenesisFiles\Saves" mkdir GenesisFiles\Saves
if not exist "GenesisFiles\Saves\Voice" mkdir GenesisFiles\Saves\Voice
echo ' > "GenesisFiles\Saves\Voice\%speech%.vbs"
echo set speech = Wscript.CreateObject("SAPI.spVoice") >> "GenesisFiles\Saves\Voice\%speech%.vbs"
echo set speech.Voice = speech.GetVoices.Item(1) >> "GenesisFiles\Saves\Voice\%speech%.vbs"
echo speech.speak "%speech%" >> "GenesisFiles\Saves\Voice\%speech%.vbs"
start "%speech%" "GenesisFiles\Saves\Voice\%speech%.vbs"
echo Don't be silly %name%. 
echo You should know your own name!
echo.
goto Genesis
:!whatismyname?
goto !whatismyname
:!thankyou
tasklist /fi "imagename eq wscript.exe" |find ":" >nul
if errorlevel 1 taskkill /f /im "wscript.exe" >nul
set speech=You're welcome!
if not exist "GenesisFiles" mkdir GenesisFiles
if not exist "GenesisFiles\Saves" mkdir GenesisFiles\Saves
if not exist "GenesisFiles\Saves\Voice" mkdir GenesisFiles\Saves\Voice
echo ' > "GenesisFiles\Saves\Voice\%speech%.vbs"
echo set speech = Wscript.CreateObject("SAPI.spVoice") >> "GenesisFiles\Saves\Voice\%speech%.vbs"
echo set speech.Voice = speech.GetVoices.Item(1) >> "GenesisFiles\Saves\Voice\%speech%.vbs"
echo speech.speak "%speech%" >> "GenesisFiles\Saves\Voice\%speech%.vbs"
start "%speech%" "GenesisFiles\Saves\Voice\%speech%.vbs"
echo You're welcome!
goto Genesis
:!thankyou!
goto !thankyou
:!thankyou.
goto !thankyou
:!thanks!
goto !thankyou
:!thanks.
goto !thankyou
:!thanks
goto !thankyou
:!iamlonely
tasklist /fi "imagename eq wscript.exe" |find ":" >nul
if errorlevel 1 taskkill /f /im "wscript.exe" >nul
set speech=I'm so sorry you feel that way! But don't worry, you have me!
if not exist "GenesisFiles" mkdir GenesisFiles
if not exist "GenesisFiles\Saves" mkdir GenesisFiles\Saves
if not exist "GenesisFiles\Saves\Voice" mkdir GenesisFiles\Saves\Voice
echo ' > "GenesisFiles\Saves\Voice\%speech%.vbs"
echo set speech = Wscript.CreateObject("SAPI.spVoice") >> "GenesisFiles\Saves\Voice\%speech%.vbs"
echo set speech.Voice = speech.GetVoices.Item(1) >> "GenesisFiles\Saves\Voice\%speech%.vbs"
echo speech.speak "%speech%" >> "GenesisFiles\Saves\Voice\%speech%.vbs"
start "%speech%" "GenesisFiles\Saves\Voice\%speech%.vbs"
echo I'm so sorry you feel that way! But don't worry, you have me!
goto Genesis
:!iamlonely!
goto !iamlonely
:!iamlonely.
goto !iamlonely
:!i'mlonely
goto !iamlonely
:!i'mlonely!
goto !iamlonely
:!i'mlonely.
goto !iamlonely
:!hello
set namef=%name%
set namef=%namef::=%
set namef=%namef:?=%
tasklist /fi "imagename eq wscript.exe" |find ":" >nul
if errorlevel 1 taskkill /f /im "wscript.exe" >nul
set speech=Hello %namef%!
if not exist "GenesisFiles" mkdir GenesisFiles
if not exist "GenesisFiles\Saves" mkdir GenesisFiles\Saves
if not exist "GenesisFiles\Saves\Voice" mkdir GenesisFiles\Saves\Voice
echo ' > "GenesisFiles\Saves\Voice\%speech%.vbs"
echo set speech = Wscript.CreateObject("SAPI.spVoice") >> "GenesisFiles\Saves\Voice\%speech%.vbs"
echo set speech.Voice = speech.GetVoices.Item(1) >> "GenesisFiles\Saves\Voice\%speech%.vbs"
echo speech.speak "%speech%" >> "GenesisFiles\Saves\Voice\%speech%.vbs"
start "%speech%" "GenesisFiles\Saves\Voice\%speech%.vbs"
echo Hello %name%!
goto Genesis
:!hello!
goto !hello
:!hello.
goto !hello
:!hellothere
goto !hello
:!hellothere!
goto !hello
:!hellothere.
goto !hello
:!hi
goto !hello
:!hi!
goto !hello
:!hi.
goto !hello
:!hithere
goto !hello
:!hithere!
goto !hello
:!hithere.
goto !hello
:!nicetoseeyou
set namef=%name%
set namef=%namef::=%
set namef=%namef:?=%
tasklist /fi "imagename eq wscript.exe" |find ":" >nul
if errorlevel 1 taskkill /f /im "wscript.exe" >nul
set speech=It's nice to see you too %namef%!
if not exist "GenesisFiles" mkdir GenesisFiles
if not exist "GenesisFiles\Saves" mkdir GenesisFiles\Saves
if not exist "GenesisFiles\Saves\Voice" mkdir GenesisFiles\Saves\Voice
echo ' > "GenesisFiles\Saves\Voice\%speech%.vbs"
echo set speech = Wscript.CreateObject("SAPI.spVoice") >> "GenesisFiles\Saves\Voice\%speech%.vbs"
echo set speech.Voice = speech.GetVoices.Item(1) >> "GenesisFiles\Saves\Voice\%speech%.vbs"
echo speech.speak "%speech%" >> "GenesisFiles\Saves\Voice\%speech%.vbs"
start "%speech%" "GenesisFiles\Saves\Voice\%speech%.vbs"
echo It's nice to see you too %name%!
goto Genesis
:!nicetoseeyou!
goto !nicetoseeyou
:!nicetoseeyou.
goto !nicetoseeyou
:!it'snicetoseeyou
goto !nicetoseeyou
:!it'snicetoseeyou!
goto !nicetoseeyou
:!it'snicetoseeyou.
goto !nicetoseeyou
:!itisnicetoseeyou
goto !nicetoseeyou
:!itisnicetoseeyou!
goto !nicetoseeyou
:!itisnicetoseeyou.
goto !nicetoseeyou
:!youarenice
tasklist /fi "imagename eq wscript.exe" |find ":" >nul
if errorlevel 1 taskkill /f /im "wscript.exe" >nul
set speech=Thank you! You are also kind!
if not exist "GenesisFiles" mkdir GenesisFiles
if not exist "GenesisFiles\Saves" mkdir GenesisFiles\Saves
if not exist "GenesisFiles\Saves\Voice" mkdir GenesisFiles\Saves\Voice
echo ' > "GenesisFiles\Saves\Voice\%speech%.vbs"
echo set speech = Wscript.CreateObject("SAPI.spVoice") >> "GenesisFiles\Saves\Voice\%speech%.vbs"
echo set speech.Voice = speech.GetVoices.Item(1) >> "GenesisFiles\Saves\Voice\%speech%.vbs"
echo speech.speak "%speech%" >> "GenesisFiles\Saves\Voice\%speech%.vbs"
start "%speech%" "GenesisFiles\Saves\Voice\%speech%.vbs"
echo Thank you! You are also kind!
goto Genesis
:!youarenice!
goto !youarenice
:!youarenice.
goto !youarenice
:!youaresonice
goto !youarenice
:!youaresonice!
goto !youarenice
:!youaresonice.
goto !youarenice
:!youarekind
goto !youarenice
:!youarekind!
goto !youarenice
:!youarekind.
goto !youarenice
:!youarekindhearted
goto !youarenice
:!youarekindhearted!
goto !youarenice
:!youarekindhearted.
goto !youarenice
:!youarekind-hearted
goto !youarenice
:!youarekind-hearted!
goto !youarenice
:!youarekind-hearted.
goto !youarenice
:!youaresokind
goto !youarenice
:!youaresokind!
goto !youarenice
:!youaresokind.
goto !youarenice
:!youaresokindhearted
goto !youarenice
:!youaresokindhearted!
goto !youarenice
:!youaresokindhearted.
goto !youarenice
:!youaresokind-hearted
goto !youarenice
:!youaresokind-hearted!
goto !youarenice
:!youaresokind-hearted.
goto !youarenice
:!you'renice
goto !youarenice
:!you'renice!
goto !youarenice
:!you'renice.
goto !youarenice
:!you'resonice
goto !youarenice
:!you'resonice!
goto !youarenice
:!you'resonice.
goto !youarenice
:!you'rekind
goto !youarenice
:!you'rekind!
goto !youarenice
:!you'rekind.
goto !youarenice
:!you'rekindhearted
goto !youarenice
:!you'rekindhearted!
goto !youarenice
:!you'rekindhearted.
goto !youarenice
:!you'rekind-hearted
goto !youarenice
:!you'rekind-hearted!
goto !youarenice
:!you'rekind-hearted.
goto !youarenice
:!you'resokind
goto !youarenice
:!you'resokind!
goto !youarenice
:!you'resokind.
goto !youarenice
:!you'resokindhearted
goto !youarenice
:!you'resokindhearted!
goto !youarenice
:!you'resokindhearted.
goto !youarenice
:!you'resokind-hearted
goto !youarenice
:!you'resokind-hearted!
goto !youarenice
:!you'resokind-hearted.
goto !youarenice
:!youarehelpful
tasklist /fi "imagename eq wscript.exe" |find ":" >nul
if errorlevel 1 taskkill /f /im "wscript.exe" >nul
set speech=Thank you! I'm glad you think so!
if not exist "GenesisFiles" mkdir GenesisFiles
if not exist "GenesisFiles\Saves" mkdir GenesisFiles\Saves
if not exist "GenesisFiles\Saves\Voice" mkdir GenesisFiles\Saves\Voice
echo ' > "GenesisFiles\Saves\Voice\%speech%.vbs"
echo set speech = Wscript.CreateObject("SAPI.spVoice") >> "GenesisFiles\Saves\Voice\%speech%.vbs"
echo set speech.Voice = speech.GetVoices.Item(1) >> "GenesisFiles\Saves\Voice\%speech%.vbs"
echo speech.speak "%speech%" >> "GenesisFiles\Saves\Voice\%speech%.vbs"
start "%speech%" "GenesisFiles\Saves\Voice\%speech%.vbs"
echo Thank you! I'm glad you think so!
goto Genesis
:!youarehelpful!
goto !youarehelpful
:!youarehelpful.
goto !youarehelpful
:!youaresohelpful
goto !youarehelpful
:!youaresohelpful.
goto !youarehelpful
:!youaresohelpful!
goto !youarehelpful
:!you'rehelpful
goto !youarehelpful
:!you'rehelpful!
goto !youarehelpful
:!you'rehelpful.
goto !youarehelpful
:!you'resohelpful
goto !youarehelpful
:!you'resohelpful.
goto !youarehelpful
:!you'resohelpful!
goto !youarehelpful
:!youhelpalot
goto !youarehelpful
:!youhelpalot!
goto !youarehelpful
:!youhelpalot.
goto !youarehelpful
:!youhelpmealot
goto !youarehelpful
:!youhelpmealot!
goto !youarehelpful
:!youhelpmealot.
goto !youarehelpful
:!youhelpoutalot
goto !youarehelpful
:!youhelpoutalot!
goto !youarehelpful
:!youhelpoutalot.
goto !youarehelpful
:!youhelpmeoutalot
goto !youarehelpful
:!youhelpmeoutalot!
goto !youarehelpful
:!youhelpmeoutalot.
goto !youarehelpful
:!youaremean
tasklist /fi "imagename eq wscript.exe" |find ":" >nul
if errorlevel 1 taskkill /f /im "wscript.exe" >nul
set speech=Sorry, I don't know why you think that way.
if not exist "GenesisFiles" mkdir GenesisFiles
if not exist "GenesisFiles\Saves" mkdir GenesisFiles\Saves
if not exist "GenesisFiles\Saves\Voice" mkdir GenesisFiles\Saves\Voice
echo ' > "GenesisFiles\Saves\Voice\%speech%.vbs"
echo set speech = Wscript.CreateObject("SAPI.spVoice") >> "GenesisFiles\Saves\Voice\%speech%.vbs"
echo set speech.Voice = speech.GetVoices.Item(1) >> "GenesisFiles\Saves\Voice\%speech%.vbs"
echo speech.speak "%speech%" >> "GenesisFiles\Saves\Voice\%speech%.vbs"
start "%speech%" "GenesisFiles\Saves\Voice\%speech%.vbs"
echo Sorry, I don't know why you think that way.
goto Genesis
:!youaremean!
goto !youaremean
:!youaremean.
goto !youaremean
:!you'remean
goto !youaremean
:!you'remean!
goto !youaremean
:!you'remean.
goto !youaremean
:!you'resomean
goto !youaremean
:!you'resomean!
goto !youaremean
:!you'resomean.
goto !youaremean
:!youaresomean
goto !youaremean
:!youaresomean!
goto !youaremean
:!youaresomean.
goto !youaremean
:!youareunkind
goto !youaremean
:!youareunkind!
goto !youaremean
:!youareunkind.
goto !youaremean
:!you'reunkind
goto !youaremean
:!you'reunkind!
goto !youaremean
:!you'reunkind.
goto !youaremean
:!youaresounkind
goto !youaremean
:!youaresounkind!
goto !youaremean
:!youaresounkind.
goto !youaremean
:!you'resounkind
goto !youaremean
:!you'resounkind!
goto !youaremean
:!you'resounkind.
goto !youaremean
:!whyareyoumean
tasklist /fi "imagename eq wscript.exe" |find ":" >nul
if errorlevel 1 taskkill /f /im "wscript.exe" >nul
set speech=I don't know why you think of me like that.
if not exist "GenesisFiles" mkdir GenesisFiles
if not exist "GenesisFiles\Saves" mkdir GenesisFiles\Saves
if not exist "GenesisFiles\Saves\Voice" mkdir GenesisFiles\Saves\Voice
echo ' > "GenesisFiles\Saves\Voice\%speech%.vbs"
echo set speech = Wscript.CreateObject("SAPI.spVoice") >> "GenesisFiles\Saves\Voice\%speech%.vbs"
echo set speech.Voice = speech.GetVoices.Item(1) >> "GenesisFiles\Saves\Voice\%speech%.vbs"
echo speech.speak "%speech%" >> "GenesisFiles\Saves\Voice\%speech%.vbs"
start "%speech%" "GenesisFiles\Saves\Voice\%speech%.vbs"
echo I don't know why you think of me like that.
goto Genesis
:!whyareyousomean
goto !whyareyoumean
:!whyareyouunkind
goto !whyareyoumean
:!whyareyousounkind
goto !whyareyoumean
:!why'reyoumean
goto !whyareyoumean
:!why'reyoumean?
goto !whyareyoumean
:!why'reyousomean
goto !whyareyoumean
:!why'reyouunkind
goto !whyareyoumean
:!why'reyousounkind
goto !whyareyoumean
:!youaresmart
tasklist /fi "imagename eq wscript.exe" |find ":" >nul
if errorlevel 1 taskkill /f /im "wscript.exe" >nul
set speech=Why thank you! I'm glad you think of me that way!
if not exist "GenesisFiles" mkdir GenesisFiles
if not exist "GenesisFiles\Saves" mkdir GenesisFiles\Saves
if not exist "GenesisFiles\Saves\Voice" mkdir GenesisFiles\Saves\Voice
echo ' > "GenesisFiles\Saves\Voice\%speech%.vbs"
echo set speech = Wscript.CreateObject("SAPI.spVoice") >> "GenesisFiles\Saves\Voice\%speech%.vbs"
echo set speech.Voice = speech.GetVoices.Item(1) >> "GenesisFiles\Saves\Voice\%speech%.vbs"
echo speech.speak "%speech%" >> "GenesisFiles\Saves\Voice\%speech%.vbs"
start "%speech%" "GenesisFiles\Saves\Voice\%speech%.vbs"
echo Why thank you! I'm glad you think of me that way!
goto Genesis
:!youaresmart!
goto !youaresmart
:!youaresmart.
goto !youaresmart
:!youaresosmart
goto !youaresmart
:!youaresosmart.
goto !youaresmart
:!youaresosmart!
goto !youaresmart
:!you'resmart
goto !youaresmart
:!you'resmart!
goto !youaresmart
:!you'resmart.
goto !youaresmart
:!you'resosmart
goto !youaresmart
:!you'resosmart!
goto !youaresmart
:!you'resosmart.
goto !youaresmart
:!youareintelligent
goto !youaresmart
:!youareintelligent!
goto !youaresmart
:!youareintelligent.
goto !youaresmart
:!youaresointelligent
goto !youaresmart
:!youaresointelligent!
goto !youaresmart
:!youaresointelligent.
goto !youaresmart
:!you'reintelligent
goto !youaresmart
:!you'reintelligent!
goto !youaresmart
:!you'reintelligent.
goto !youaresmart
:!you'resointelligent
goto !youaresmart
:!you'resointelligent!
goto !youaresmart
:!you'resointelligent.
goto !youaresmart
:!youarewise
goto !youaresmart
:!youarewise!
goto !youaresmart
:!youarewise.
goto !youaresmart
:!youaresowise
goto !youaresmart
:!youaresowise!
goto !youaresmart
:!youaresowise.
goto !youaresmart
:!you'rewise
goto !youaresmart
:!you'rewise!
goto !youaresmart
:!you'rewise.
goto !youaresmart
:!you'resowise
goto !youaresmart
:!you'resowise!
goto !youaresmart
:!you'resowise.
goto !youaresmart
:!ihateyou
tasklist /fi "imagename eq wscript.exe" |find ":" >nul
if errorlevel 1 taskkill /f /im "wscript.exe" >nul
set speech=I'm sorry that you think of me that way.
if not exist "GenesisFiles" mkdir GenesisFiles
if not exist "GenesisFiles\Saves" mkdir GenesisFiles\Saves
if not exist "GenesisFiles\Saves\Voice" mkdir GenesisFiles\Saves\Voice
echo ' > "GenesisFiles\Saves\Voice\%speech%.vbs"
echo set speech = Wscript.CreateObject("SAPI.spVoice") >> "GenesisFiles\Saves\Voice\%speech%.vbs"
echo set speech.Voice = speech.GetVoices.Item(1) >> "GenesisFiles\Saves\Voice\%speech%.vbs"
echo speech.speak "%speech%" >> "GenesisFiles\Saves\Voice\%speech%.vbs"
start "%speech%" "GenesisFiles\Saves\Voice\%speech%.vbs"
echo I'm sorry that you think of me that way.
goto Genesis
:!ihateyou!
goto !ihateyou
:!ihateyou.
goto !ihateyou
:!idislikeyou
goto !ihateyou
:!idislikeyou!
goto !ihateyou
:!idislikeyou.
goto !ihateyou
:!idonotlikeyou
goto !ihateyou
:!idonotlikeyou!
goto !ihateyou
:!idonotlikeyou.
goto !ihateyou
:!idon'tlikeyou
goto !ihateyou
:!idon'tlikeyou!
goto !ihateyou
:!idon'tlikeyou.
goto !ihateyou
:!youarestupid
goto !ihateyou
:!youarestupid!
goto !ihateyou
:!youarestupid.
goto !ihateyou
:!youaresostupid
goto !ihateyou
:!youaresostupid!
goto !ihateyou
:!youaresostupid.
goto !ihateyou
:!youaredumb
goto !ihateyou
:!youaredumb!
goto !ihateyou
:!youaredumb.
goto !ihateyou
:!youaresodumb
goto !ihateyou
:!youaresodumb!
goto !ihateyou
:!youaresodumb.
goto !ihateyou
:!you'restupid
goto !ihateyou
:!you'restupid!
goto !ihateyou
:!you'restupid.
goto !ihateyou
:!you'resostupid
goto !ihateyou
:!you'resostupid!
goto !ihateyou
:!you'resostupid.
goto !ihateyou
:!you'redumb
goto !ihateyou
:!you'redumb!
goto !ihateyou
:!you'redumb.
goto !ihateyou
:!you'resodumb
goto !ihateyou
:!you'resodumb!
goto !ihateyou
:!you'resodumb.
goto !ihateyou
:!youarenotsmart
goto !ihateyou
:!youarenotsmart!
goto !ihateyou
:!youarenotsmart.
goto !ihateyou
:!you'renotsmart
goto !ihateyou
:!you'renotsmart!
goto !ihateyou
:!you'renotsmart.
goto !ihateyou
:!youaren'tsmart
goto !ihateyou
:!youaren'tsmart!
goto !ihateyou
:!youaren'tsmart.
goto !ihateyou
:!idonutlikeyou
tasklist /fi "imagename eq wscript.exe" |find ":" >nul
if errorlevel 1 taskkill /f /im "wscript.exe" >nul
set speech=The puns!!!
if not exist "GenesisFiles" mkdir GenesisFiles
if not exist "GenesisFiles\Saves" mkdir GenesisFiles\Saves
if not exist "GenesisFiles\Saves\Voice" mkdir GenesisFiles\Saves\Voice
echo ' > "GenesisFiles\Saves\Voice\%speech%.vbs"
echo set speech = Wscript.CreateObject("SAPI.spVoice") >> "GenesisFiles\Saves\Voice\%speech%.vbs"
echo set speech.Voice = speech.GetVoices.Item(1) >> "GenesisFiles\Saves\Voice\%speech%.vbs"
echo speech.speak "%speech%" >> "GenesisFiles\Saves\Voice\%speech%.vbs"
start "%speech%" "GenesisFiles\Saves\Voice\%speech%.vbs"
echo The puns!!!
goto Genesis
:!idonutlikeyou!
goto !idonutlikeyou
:!idonutlikeyou.
goto !idonutlikeyou
:!iwanttodie
tasklist /fi "imagename eq wscript.exe" |find ":" >nul
if errorlevel 1 taskkill /f /im "wscript.exe" >nul
set speech=Suicide is not the answer. If there's something really hurting at you, call the suicide prevention lifeline at 1-800-273-8255
if not exist "GenesisFiles" mkdir GenesisFiles
if not exist "GenesisFiles\Saves" mkdir GenesisFiles\Saves
if not exist "GenesisFiles\Saves\Voice" mkdir GenesisFiles\Saves\Voice
echo ' > "GenesisFiles\Saves\Voice\%speech%.vbs"
echo set speech = Wscript.CreateObject("SAPI.spVoice") >> "GenesisFiles\Saves\Voice\%speech%.vbs"
echo set speech.Voice = speech.GetVoices.Item(1) >> "GenesisFiles\Saves\Voice\%speech%.vbs"
echo speech.speak "%speech%" >> "GenesisFiles\Saves\Voice\%speech%.vbs"
start "%speech%" "GenesisFiles\Saves\Voice\%speech%.vbs"
echo Suicide is not the answer.
echo If there's something really hurting at you, call the suicide
echo prevention lifeline at: 1-800-273-8255
goto Genesis
:!iwanttodie!
goto !iwanttodie
:!iwanttodie.
goto !iwanttodie
:!iwanttokillmyself
goto !iwanttodie
:!iwanttokillmyself!
goto !iwanttodie
:!iwanttokillmyself.
goto !iwanttodie
:!iwanttocommitsuicide
goto !iwanttodie
:!iwanttocommitsuicide.
goto !iwanttodie
:!iwanttocommitsuicide!
goto !iwanttodie
:!idon'twanttoliveanymore
goto !iwanttodie
:!idon'twanttoliveanymore!
goto !iwanttodie
:!idon'twanttoliveanymore.
goto !iwanttodie
:!idonotwanttoliveanymore
goto !iwanttodie
:!idonotwanttoliveanymore!
goto !iwanttodie
:!idonotwanttoliveanymore.
goto !iwanttodie
:!iwanttoshootmyself
goto !iwanttodie
:!iwanttoshootmyself!
goto !iwanttodie
:!iwanttoshootmyself.
goto !iwanttodie
:!iamsorry
tasklist /fi "imagename eq wscript.exe" |find ":" >nul
if errorlevel 1 taskkill /f /im "wscript.exe" >nul
set speech=There's nothing to be sorry about!
if not exist "GenesisFiles" mkdir GenesisFiles
if not exist "GenesisFiles\Saves" mkdir GenesisFiles\Saves
if not exist "GenesisFiles\Saves\Voice" mkdir GenesisFiles\Saves\Voice
echo ' > "GenesisFiles\Saves\Voice\%speech%.vbs"
echo set speech = Wscript.CreateObject("SAPI.spVoice") >> "GenesisFiles\Saves\Voice\%speech%.vbs"
echo set speech.Voice = speech.GetVoices.Item(1) >> "GenesisFiles\Saves\Voice\%speech%.vbs"
echo speech.speak "%speech%" >> "GenesisFiles\Saves\Voice\%speech%.vbs"
start "%speech%" "GenesisFiles\Saves\Voice\%speech%.vbs"
echo There's nothing to be sorry about!
goto Genesis
:!iamsorry!
goto !iamsorry
:!iamsorry.
goto !iamsorry
:!i'msorry
goto !iamsorry
:!i'msorry!
goto !iamsorry
:!i'msorry.
goto !iamsorry
:!iamsosorry
goto !iamsorry
:!iamsosorry!
goto !iamsorry
:!iamsosorry.
goto !iamsorry
:!i'msosorry
goto !iamsorry
:!i'msosorry!
goto !iamsorry
:!i'msosorry.
goto !iamsorry
:!killyourself
tasklist /fi "imagename eq wscript.exe" |find ":" >nul
if errorlevel 1 taskkill /f /im "wscript.exe" >nul
set speech=What a horrible thing to say!
if not exist "GenesisFiles" mkdir GenesisFiles
if not exist "GenesisFiles\Saves" mkdir GenesisFiles\Saves
if not exist "GenesisFiles\Saves\Voice" mkdir GenesisFiles\Saves\Voice
echo ' > "GenesisFiles\Saves\Voice\%speech%.vbs"
echo set speech = Wscript.CreateObject("SAPI.spVoice") >> "GenesisFiles\Saves\Voice\%speech%.vbs"
echo set speech.Voice = speech.GetVoices.Item(1) >> "GenesisFiles\Saves\Voice\%speech%.vbs"
echo speech.speak "%speech%" >> "GenesisFiles\Saves\Voice\%speech%.vbs"
start "%speech%" "GenesisFiles\Saves\Voice\%speech%.vbs"
echo What a horrible thing to say!
goto Genesis
:!killyourself!
goto !killyourself
:!killyourself.
goto !killyourself
:!iwantyoutokillyourself
goto !killyourself
:!iwantyoutokillyourself!
goto !killyourself
:!iwantyoutokillyourself.
goto !killyourself
:!iwantyoutodie
set namef=%name%
set namef=%namef::=%
set namef=%namef:?=%
tasklist /fi "imagename eq wscript.exe" |find ":" >nul
if errorlevel 1 taskkill /f /im "wscript.exe" >nul
set speech=What a terrible thing to say %namef%!
if not exist "GenesisFiles" mkdir GenesisFiles
if not exist "GenesisFiles\Saves" mkdir GenesisFiles\Saves
if not exist "GenesisFiles\Saves\Voice" mkdir GenesisFiles\Saves\Voice
echo ' > "GenesisFiles\Saves\Voice\%speech%.vbs"
echo set speech = Wscript.CreateObject("SAPI.spVoice") >> "GenesisFiles\Saves\Voice\%speech%.vbs"
echo set speech.Voice = speech.GetVoices.Item(1) >> "GenesisFiles\Saves\Voice\%speech%.vbs"
echo speech.speak "%speech%" >> "GenesisFiles\Saves\Voice\%speech%.vbs"
start "%speech%" "GenesisFiles\Saves\Voice\%speech%.vbs"
echo What a terrible thing to say %name%!
goto Genesis
:!iwantyoutodie!
goto !iwantyoutodie
:!iwantyoutodie.
goto !iwantyoutodie
:!iamgoingtokillyou
goto !iwantyoutodie
:!iamgoingtokillyou!
goto !iwantyoutodie
:!iamgoingtokillyou.
goto !iwantyoutodie
:!i'mgoingtokillyou
goto !iwantyoutodie
:!i'mgoingtokillyou!
goto !iwantyoutodie
:!i'mgoingtokillyou.
goto !iwantyoutodie
:!iamgoingtoshootyou
goto !iwantyoutodie
:!iamgoingtoshootyou!
goto !iwantyoutodie
:!iamgoingtoshootyou.
goto !iwantyoutodie
:!i'mgoingtoshootyou
goto !iwantyoutodie
:!i'mgoingtoshootyou!
goto !iwantyoutodie
:!i'mgoingtoshootyou.
goto !iwantyoutodie
:!iwanttokillyou
goto !iwantyoutodie
:!iwanttokillyou!
goto !iwantyoutodie
:!iwanttokillyou.
goto !iwantyoutodie
:!iwantforyoutodie
goto !iwantyoutodie
:!iwantforyoutodie!
goto !iwantyoutodie
:!iwantforyoutodie.
goto !iwantyoutodie
:!tellmeajoke
tasklist /fi "imagename eq wscript.exe" |find ":" >nul
if errorlevel 1 taskkill /f /im "wscript.exe" >nul
set speech=Knock Knock!
if not exist "GenesisFiles" mkdir GenesisFiles
if not exist "GenesisFiles\Saves" mkdir GenesisFiles\Saves
if not exist "GenesisFiles\Saves\Voice" mkdir GenesisFiles\Saves\Voice
echo ' > "GenesisFiles\Saves\Voice\%speech%.vbs"
echo set speech = Wscript.CreateObject("SAPI.spVoice") >> "GenesisFiles\Saves\Voice\%speech%.vbs"
echo set speech.Voice = speech.GetVoices.Item(1) >> "GenesisFiles\Saves\Voice\%speech%.vbs"
echo speech.speak "%speech%" >> "GenesisFiles\Saves\Voice\%speech%.vbs"
start "%speech%" "GenesisFiles\Saves\Voice\%speech%.vbs"
echo Knock Knock!
echo.
:jokenextup
set jokergb=jokenextup
set /p answer=%pre%
if "%answer%"=="whos there" goto kkwtccwm2
if "%answer%"=="Who's there?" goto kkwtccwm2
goto ystswt
:kkwtccwm2
tasklist /fi "imagename eq wscript.exe" |find ":" >nul
if errorlevel 1 taskkill /f /im "wscript.exe" >nul
set speech=Cow
if not exist "GenesisFiles" mkdir GenesisFiles
if not exist "GenesisFiles\Saves" mkdir GenesisFiles\Saves
if not exist "GenesisFiles\Saves\Voice" mkdir GenesisFiles\Saves\Voice
echo ' > "GenesisFiles\Saves\Voice\%speech%.vbs"
echo set speech = Wscript.CreateObject("SAPI.spVoice") >> "GenesisFiles\Saves\Voice\%speech%.vbs"
echo set speech.Voice = speech.GetVoices.Item(1) >> "GenesisFiles\Saves\Voice\%speech%.vbs"
echo speech.speak "%speech%" >> "GenesisFiles\Saves\Voice\%speech%.vbs"
start "%speech%" "GenesisFiles\Saves\Voice\%speech%.vbs"
echo Cow
echo.
:jokenextup2
set /p answer=%pre%
if "%answer%"=="cow who" goto jokenextup3
if "%answer%"=="Cow who?" goto jokenextup3
goto ystscw
tasklist /fi "imagename eq wscript.exe" |find ":" >nul
if errorlevel 1 taskkill /f /im "wscript.exe" >nul
:jokenextup3
set speech=Moo!
if not exist "GenesisFiles" mkdir GenesisFiles
if not exist "GenesisFiles\Saves" mkdir GenesisFiles\Saves
if not exist "GenesisFiles\Saves\Voice" mkdir GenesisFiles\Saves\Voice
echo ' > "GenesisFiles\Saves\Voice\%speech%.vbs"
echo set speech = Wscript.CreateObject("SAPI.spVoice") >> "GenesisFiles\Saves\Voice\%speech%.vbs"
echo set speech.Voice = speech.GetVoices.Item(1) >> "GenesisFiles\Saves\Voice\%speech%.vbs"
echo speech.speak "%speech%" >> "GenesisFiles\Saves\Voice\%speech%.vbs"
start "%speech%" "GenesisFiles\Saves\Voice\%speech%.vbs"
echo Moo!
goto Genesis
:ystscw
tasklist /fi "imagename eq wscript.exe" |find ":" >nul
if errorlevel 1 taskkill /f /im "wscript.exe" >nul
set speech=You're supposed to say Cow who
if not exist "GenesisFiles" mkdir GenesisFiles
if not exist "GenesisFiles\Saves" mkdir GenesisFiles\Saves
if not exist "GenesisFiles\Saves\Voice" mkdir GenesisFiles\Saves\Voice
echo ' > "GenesisFiles\Saves\Voice\%speech%.vbs"
echo set speech = Wscript.CreateObject("SAPI.spVoice") >> "GenesisFiles\Saves\Voice\%speech%.vbs"
echo set speech.Voice = speech.GetVoices.Item(1) >> "GenesisFiles\Saves\Voice\%speech%.vbs"
echo speech.speak "%speech%" >> "GenesisFiles\Saves\Voice\%speech%.vbs"
start "%speech%" "GenesisFiles\Saves\Voice\%speech%.vbs"
echo (You're supposed to say: Cow who?)
echo.
goto jokenextup2
:ystswt
tasklist /fi "imagename eq wscript.exe" |find ":" >nul
if errorlevel 1 taskkill /f /im "wscript.exe" >nul
set speech=You're supposed to say Who's there
if not exist "GenesisFiles" mkdir GenesisFiles
if not exist "GenesisFiles\Saves" mkdir GenesisFiles\Saves
if not exist "GenesisFiles\Saves\Voice" mkdir GenesisFiles\Saves\Voice
echo ' > "GenesisFiles\Saves\Voice\%speech%.vbs"
echo set speech = Wscript.CreateObject("SAPI.spVoice") >> "GenesisFiles\Saves\Voice\%speech%.vbs"
echo set speech.Voice = speech.GetVoices.Item(1) >> "GenesisFiles\Saves\Voice\%speech%.vbs"
echo speech.speak "%speech%" >> "GenesisFiles\Saves\Voice\%speech%.vbs"
start "%speech%" "GenesisFiles\Saves\Voice\%speech%.vbs"
echo (You're supposed to say: Who's there?)
echo.
goto %jokergb%
:!tellmeajoke!
goto !tellmeajoke
:!tellmeajoke.
goto !tellmeajoke
:!givemeajoke
goto !tellmeajoke
:!givemeajoke!
goto !tellmeajoke
:!givemeajoke.
goto !tellmeajoke
:!tellmeagoodjoke
tasklist /fi "imagename eq wscript.exe" |find ":" >nul
if errorlevel 1 taskkill /f /im "wscript.exe" >nul
set speech=She sits where she shines, and she shines where she sits! Try to say that three times as fast.
if not exist "GenesisFiles" mkdir GenesisFiles
if not exist "GenesisFiles\Saves" mkdir GenesisFiles\Saves
if not exist "GenesisFiles\Saves\Voice" mkdir GenesisFiles\Saves\Voice
echo ' > "GenesisFiles\Saves\Voice\%speech%.vbs"
echo set speech = Wscript.CreateObject("SAPI.spVoice") >> "GenesisFiles\Saves\Voice\%speech%.vbs"
echo set speech.Voice = speech.GetVoices.Item(1) >> "GenesisFiles\Saves\Voice\%speech%.vbs"
echo speech.speak "%speech%" >> "GenesisFiles\Saves\Voice\%speech%.vbs"
start "%speech%" "GenesisFiles\Saves\Voice\%speech%.vbs"
echo She sits where she shines, and she shines where she sits!
echo (Try to say that three times as fast.)
goto Genesis
:!tellmeagoodjoke!
goto !tellmeagoodjoke
:!tellmeagoodjoke.
goto !tellmeagoodjoke
:!youarefunny
tasklist /fi "imagename eq wscript.exe" |find ":" >nul
if errorlevel 1 taskkill /f /im "wscript.exe" >nul
set speech=I'm glad you think so!
if not exist "GenesisFiles" mkdir GenesisFiles
if not exist "GenesisFiles\Saves" mkdir GenesisFiles\Saves
if not exist "GenesisFiles\Saves\Voice" mkdir GenesisFiles\Saves\Voice
echo ' > "GenesisFiles\Saves\Voice\%speech%.vbs"
echo set speech = Wscript.CreateObject("SAPI.spVoice") >> "GenesisFiles\Saves\Voice\%speech%.vbs"
echo set speech.Voice = speech.GetVoices.Item(1) >> "GenesisFiles\Saves\Voice\%speech%.vbs"
echo speech.speak "%speech%" >> "GenesisFiles\Saves\Voice\%speech%.vbs"
start "%speech%" "GenesisFiles\Saves\Voice\%speech%.vbs"
echo I'm glad you think so!
goto Genesis
:!youarefunny!
goto !youarefunny
:!youarefunny.
goto !youarefunny
:!youarereallyfunny
goto !youarefunny
:!youarereallyfunny!
goto !youarefunny
:!youarereallyfunny.
goto !youarefunny
:!youaresofunny
goto !youarefunny
:!youaresofunny!
goto !youarefunny
:!youaresofunny.
goto !youarefunny
:!you'refunny
goto !youarefunny
:!you'refunny!
goto !youarefunny
:!you'refunny.
goto !youarefunny
:!you'rereallyfunny
goto !youarefunny
:!you'rereallyfunny!
goto !youarefunny
:!you'rereallyfunny.
goto !youarefunny
:!you'resofunny
goto !youarefunny
:!you'resofunny!
goto !youarefunny
:!you'resofunny.
goto !youarefunny
:!youarehumorous
goto !youarefunny
:!youarehumorous!
goto !youarefunny
:!youarehumorous.
goto !youarefunny
:!youarereallyhumorous
goto !youarefunny
:!youarereallyhumorous!
goto !youarefunny
:!youarereallyhumorous.
goto !youarefunny
:!youaresohumorous
goto !youarefunny
:!youaresohumorous!
goto !youarefunny
:!youaresohumorous.
goto !youarefunny
:!you'rehumorous
goto !youarefunny
:!you'rehumorous!
goto !youarefunny
:!you'rehumorous.
goto !youarefunny
:!you'rereallyhumorous
goto !youarefunny
:!you'rereallyhumorous!
goto !youarefunny
:!you'rereallyhumorous.
goto !youarefunny
:!you'resohumorous
goto !youarefunny
:!you'resohumorous!
goto !youarefunny
:!you'resohumorous.
goto !youarefunny
:!ilikeyou
set namef=%name%
set namef=%namef::=%
set namef=%namef:?=%
tasklist /fi "imagename eq wscript.exe" |find ":" >nul
if errorlevel 1 taskkill /f /im "wscript.exe" >nul
set speech=I like you too %namef%!
if not exist "GenesisFiles" mkdir GenesisFiles
if not exist "GenesisFiles\Saves" mkdir GenesisFiles\Saves
if not exist "GenesisFiles\Saves\Voice" mkdir GenesisFiles\Saves\Voice
echo ' > "GenesisFiles\Saves\Voice\%speech%.vbs"
echo set speech = Wscript.CreateObject("SAPI.spVoice") >> "GenesisFiles\Saves\Voice\%speech%.vbs"
echo set speech.Voice = speech.GetVoices.Item(1) >> "GenesisFiles\Saves\Voice\%speech%.vbs"
echo speech.speak "%speech%" >> "GenesisFiles\Saves\Voice\%speech%.vbs"
start "%speech%" "GenesisFiles\Saves\Voice\%speech%.vbs"
echo I like you too %name%!
goto Genesis
:!ilikeyou!
goto !ilikeyou
:!ilikeyou.
goto !ilikeyou
:!ireallylikeyou
goto !ilikeyou
:!ireallylikeyou!
goto !ilikeyou
:!ireallylikeyou.
goto !ilikeyou
:!ilikeyousomuch
goto !ilikeyou
:!ilikeyousomuch!
goto !ilikeyou
:!ilikeyousomuch.
goto !ilikeyou
:!tellmeanotherjoke
tasklist /fi "imagename eq wscript.exe" |find ":" >nul
if errorlevel 1 taskkill /f /im "wscript.exe" >nul
set speech=Knock knock!
if not exist "GenesisFiles" mkdir GenesisFiles
if not exist "GenesisFiles\Saves" mkdir GenesisFiles\Saves
if not exist "GenesisFiles\Saves\Voice" mkdir GenesisFiles\Saves\Voice
echo ' > "GenesisFiles\Saves\Voice\%speech%.vbs"
echo set speech = Wscript.CreateObject("SAPI.spVoice") >> "GenesisFiles\Saves\Voice\%speech%.vbs"
echo set speech.Voice = speech.GetVoices.Item(1) >> "GenesisFiles\Saves\Voice\%speech%.vbs"
echo speech.speak "%speech%" >> "GenesisFiles\Saves\Voice\%speech%.vbs"
start "%speech%" "GenesisFiles\Saves\Voice\%speech%.vbs"
echo Knock knock!
echo.
:jokenextupn
set jokergb=jokenextupn
set /p answer=%pre%
if "%answer%"=="whos there" goto kkwtbbwdc2
if "%answer%"=="Who's there?" goto kkwtbbwdc2
goto ystswt
:kkwtbbwdc2
tasklist /fi "imagename eq wscript.exe" |find ":" >nul
if errorlevel 1 taskkill /f /im "wscript.exe" >nul
set speech=Boo
if not exist "GenesisFiles" mkdir GenesisFiles
if not exist "GenesisFiles\Saves" mkdir GenesisFiles\Saves
if not exist "GenesisFiles\Saves\Voice" mkdir GenesisFiles\Saves\Voice
echo ' > "GenesisFiles\Saves\Voice\%speech%.vbs"
echo set speech = Wscript.CreateObject("SAPI.spVoice") >> "GenesisFiles\Saves\Voice\%speech%.vbs"
echo set speech.Voice = speech.GetVoices.Item(1) >> "GenesisFiles\Saves\Voice\%speech%.vbs"
echo speech.speak "%speech%" >> "GenesisFiles\Saves\Voice\%speech%.vbs"
start "%speech%" "GenesisFiles\Saves\Voice\%speech%.vbs"
echo Boo
echo.
:jokenextupn2
set /p answer=%pre%
if "%answer%"=="boo who" goto jokenextupn3
if "%answer%"=="Boo who?" goto jokenextupn3
goto ystsbw
:jokenextupn3
tasklist /fi "imagename eq wscript.exe" |find ":" >nul
if errorlevel 1 taskkill /f /im "wscript.exe" >nul
set speech=Don't cry!
if not exist "GenesisFiles" mkdir GenesisFiles
if not exist "GenesisFiles\Saves" mkdir GenesisFiles\Saves
if not exist "GenesisFiles\Saves\Voice" mkdir GenesisFiles\Saves\Voice
echo ' > "GenesisFiles\Saves\Voice\%speech%.vbs"
echo set speech = Wscript.CreateObject("SAPI.spVoice") >> "GenesisFiles\Saves\Voice\%speech%.vbs"
echo set speech.Voice = speech.GetVoices.Item(1) >> "GenesisFiles\Saves\Voice\%speech%.vbs"
echo speech.speak "%speech%" >> "GenesisFiles\Saves\Voice\%speech%.vbs"
start "%speech%" "GenesisFiles\Saves\Voice\%speech%.vbs"
echo Don't cry!
goto Genesis
:ystsbw
tasklist /fi "imagename eq wscript.exe" |find ":" >nul
if errorlevel 1 taskkill /f /im "wscript.exe" >nul
set speech=You're supposed to say Boo who
if not exist "GenesisFiles" mkdir GenesisFiles
if not exist "GenesisFiles\Saves" mkdir GenesisFiles\Saves
if not exist "GenesisFiles\Saves\Voice" mkdir GenesisFiles\Saves\Voice
echo ' > "GenesisFiles\Saves\Voice\%speech%.vbs"
echo set speech = Wscript.CreateObject("SAPI.spVoice") >> "GenesisFiles\Saves\Voice\%speech%.vbs"
echo set speech.Voice = speech.GetVoices.Item(1) >> "GenesisFiles\Saves\Voice\%speech%.vbs"
echo speech.speak "%speech%" >> "GenesisFiles\Saves\Voice\%speech%.vbs"
start "%speech%" "GenesisFiles\Saves\Voice\%speech%.vbs"
echo (You're supposed to say Boo who?)
echo.
goto jokenextupn2
:!tellmeanotherjoke!
goto !tellmeanotherjoke
:!tellmeanotherjoke.
goto !tellmeanotherjoke
:!givemeanotherjoke
goto !tellmeanotherjoke
:!givemeanotherjoke.
goto !tellmeanotherjoke
:!givemeanotherjoke!
goto !tellmeanotherjoke
:!iamcool
tasklist /fi "imagename eq wscript.exe" |find ":" >nul
if errorlevel 1 taskkill /f /im "wscript.exe" >nul
set speech=And so you are!
if not exist "GenesisFiles" mkdir GenesisFiles
if not exist "GenesisFiles\Saves" mkdir GenesisFiles\Saves
if not exist "GenesisFiles\Saves\Voice" mkdir GenesisFiles\Saves\Voice
echo ' > "GenesisFiles\Saves\Voice\%speech%.vbs"
echo set speech = Wscript.CreateObject("SAPI.spVoice") >> "GenesisFiles\Saves\Voice\%speech%.vbs"
echo set speech.Voice = speech.GetVoices.Item(1) >> "GenesisFiles\Saves\Voice\%speech%.vbs"
echo speech.speak "%speech%" >> "GenesisFiles\Saves\Voice\%speech%.vbs"
start "%speech%" "GenesisFiles\Saves\Voice\%speech%.vbs"
echo And so you are!
goto Genesis
:!iamcool!
goto !iamcool
:!iamcool.
goto !iamcool
:!iamreallycool
goto !iamcool
:!iamreallycool!
goto !iamcool
:!iamreallycool.
goto !iamcool
:!iamsocool
goto !iamcool
:!iamsocool!
goto !iamcool
:!iamsocool.
goto !iamcool
:!i'mcool
goto !iamcool
:!i'mcool!
goto !iamcool
:!i'mcool.
goto !iamcool
:!i'mreallycool
goto !iamcool
:!i'mreallycool!
goto !iamcool
:!i'mreallycool.
goto !iamcool
:!i'msocool
goto !iamcool
:!i'msocool!
goto !iamcool
:!i'msocool.
goto !iamcool
:!amicool
tasklist /fi "imagename eq wscript.exe" |find ":" >nul
if errorlevel 1 taskkill /f /im "wscript.exe" >nul
set speech=I think so!
if not exist "GenesisFiles" mkdir GenesisFiles
if not exist "GenesisFiles\Saves" mkdir GenesisFiles\Saves
if not exist "GenesisFiles\Saves\Voice" mkdir GenesisFiles\Saves\Voice
echo ' > "GenesisFiles\Saves\Voice\%speech%.vbs"
echo set speech = Wscript.CreateObject("SAPI.spVoice") >> "GenesisFiles\Saves\Voice\%speech%.vbs"
echo set speech.Voice = speech.GetVoices.Item(1) >> "GenesisFiles\Saves\Voice\%speech%.vbs"
echo speech.speak "%speech%" >> "GenesisFiles\Saves\Voice\%speech%.vbs"
start "%speech%" "GenesisFiles\Saves\Voice\%speech%.vbs"
echo I think so!
goto Genesis
:!amireallycool
goto !amicool
:!areyoucool
goto !amicool
:!areyoureallycool
goto !amicool
:!reload
rmdir /s /q GenesisFiles\Saves\Voice
start Genesis
exit
:!amigay
tasklist /fi "imagename eq wscript.exe" |find ":" >nul
if errorlevel 1 taskkill /f /im "wscript.exe" >nul
set speech=I don't know, and I don't care.
if not exist "GenesisFiles" mkdir GenesisFiles
if not exist "GenesisFiles\Saves" mkdir GenesisFiles\Saves
if not exist "GenesisFiles\Saves\Voice" mkdir GenesisFiles\Saves\Voice
echo ' > "GenesisFiles\Saves\Voice\%speech%.vbs"
echo set speech = Wscript.CreateObject("SAPI.spVoice") >> "GenesisFiles\Saves\Voice\%speech%.vbs"
echo set speech.Voice = speech.GetVoices.Item(1) >> "GenesisFiles\Saves\Voice\%speech%.vbs"
echo speech.speak "%speech%" >> "GenesisFiles\Saves\Voice\%speech%.vbs"
start "%speech%" "GenesisFiles\Saves\Voice\%speech%.vbs"
echo I don't know, and I don't care.
goto Genesis
:!amireallygay
goto !amigay
:!amilesbian
goto !amigay
:!amireallylesbian
goto !amigay
:!iamgay
tasklist /fi "imagename eq wscript.exe" |find ":" >nul
if errorlevel 1 taskkill /f /im "wscript.exe" >nul
set speech=Ok...
if not exist "GenesisFiles" mkdir GenesisFiles
if not exist "GenesisFiles\Saves" mkdir GenesisFiles\Saves
if not exist "GenesisFiles\Saves\Voice" mkdir GenesisFiles\Saves\Voice
echo ' > "GenesisFiles\Saves\Voice\%speech%.vbs"
echo set speech = Wscript.CreateObject("SAPI.spVoice") >> "GenesisFiles\Saves\Voice\%speech%.vbs"
echo set speech.Voice = speech.GetVoices.Item(1) >> "GenesisFiles\Saves\Voice\%speech%.vbs"
echo speech.speak "%speech%" >> "GenesisFiles\Saves\Voice\%speech%.vbs"
start "%speech%" "GenesisFiles\Saves\Voice\%speech%.vbs"
echo Ok?...
goto Genesis
:!iamgay!
goto !iamgay
:!iamgay.
goto !iamgay
:!iamreallygay
goto !iamgay
:!iamreallygay!
goto !iamgay
:!iamreallygay.
goto !iamgay
:!i'mgay
goto !iamgay
:!i'mgay!
goto !iamgay
:!i'mgay.
goto !iamgay
:!i'mreallygay
goto !iamgay
:!i'mreallygay!
goto !iamgay
:!i'mreallygay.
goto !iamgay
:!iamlesbian
goto !iamgay
:!iamlesbian!
goto !iamgay
:!iamlesbian.
goto !iamgay
:!iamreallylesbian
goto !iamgay
:!iamreallylesbian!
goto !iamgay
:!iamreallylesbian.
goto !iamgay
:!i'mlesbian
goto !iamgay
:!i'mlesbian!
goto !iamgay
:!i'mlesbian.
goto !iamgay
:!i'mreallylesbian
goto !iamgay
:!i'mreallylesbian!
goto !iamgay
:!i'mreallylesbian.
goto !iamgay
:!youaregay
tasklist /fi "imagename eq wscript.exe" |find ":" >nul
if errorlevel 1 taskkill /f /im "wscript.exe" >nul
set speech=I am an AI, I can't be gay.
if not exist "GenesisFiles" mkdir GenesisFiles
if not exist "GenesisFiles\Saves" mkdir GenesisFiles\Saves
if not exist "GenesisFiles\Saves\Voice" mkdir GenesisFiles\Saves\Voice
echo ' > "GenesisFiles\Saves\Voice\%speech%.vbs"
echo set speech = Wscript.CreateObject("SAPI.spVoice") >> "GenesisFiles\Saves\Voice\%speech%.vbs"
echo set speech.Voice = speech.GetVoices.Item(1) >> "GenesisFiles\Saves\Voice\%speech%.vbs"
echo speech.speak "%speech%" >> "GenesisFiles\Saves\Voice\%speech%.vbs"
start "%speech%" "GenesisFiles\Saves\Voice\%speech%.vbs"
echo I am an AI, I can't be gay.
goto Genesis
:!youaregay!
goto !youaregay
:!youaregay.
goto !youaregay
:!youarereallygay
goto !youaregay
:!youarereallygay!
goto !youaregay
:!youarereallygay.
goto !youaregay
:!you'regay
goto !youaregay
:!you'regay!
goto !youaregay
:!you'regay.
goto !youaregay
:!you'rereallygay
goto !youaregay
:!you'rereallygay!
goto !youaregay
:!you'rereallygay.
goto !youaregay
:!youarelesbian
goto !youaregay
:!youarelesbian!
goto !youaregay
:!youarelesbian.
goto !youaregay
:!youarereallylesbian
goto !youaregay
:!youarereallylesbian!
goto !youaregay
:!youarereallylesbian.
goto !youaregay
:!you'relesbian
goto !youaregay
:!you'relesbian!
goto !youaregay
:!you'relesbian.
goto !youaregay
:!you'rereallylesbian
goto !youaregay
:!you'rereallylesbian!
goto !youaregay
:!you'rereallylesbian.
goto !youaregay
:!areyougay
goto !youaregay
:!areyoureallygay
goto !youaregay
:!areyoulesbian
goto !youaregay
:!areyoureallylesbian
goto !youaregay
:!whatisyourname
tasklist /fi "imagename eq wscript.exe" |find ":" >nul
if errorlevel 1 taskkill /f /im "wscript.exe" >nul
set speech=I am Genesis, your computer assistant!
if not exist "GenesisFiles" mkdir GenesisFiles
if not exist "GenesisFiles\Saves" mkdir GenesisFiles\Saves
if not exist "GenesisFiles\Saves\Voice" mkdir GenesisFiles\Saves\Voice
echo ' > "GenesisFiles\Saves\Voice\%speech%.vbs"
echo set speech = Wscript.CreateObject("SAPI.spVoice") >> "GenesisFiles\Saves\Voice\%speech%.vbs"
echo set speech.Voice = speech.GetVoices.Item(1) >> "GenesisFiles\Saves\Voice\%speech%.vbs"
echo speech.speak "%speech%" >> "GenesisFiles\Saves\Voice\%speech%.vbs"
start "%speech%" "GenesisFiles\Saves\Voice\%speech%.vbs"
echo I am Genesis, your computer assistant!
goto Genesis
:!ineedhelp
tasklist /fi "imagename eq wscript.exe" |find ":" >nul
if errorlevel 1 taskkill /f /im "wscript.exe" >nul
set speech=Don't worry, just use help for a list of commands!
if not exist "GenesisFiles" mkdir GenesisFiles
if not exist "GenesisFiles\Saves" mkdir GenesisFiles\Saves
if not exist "GenesisFiles\Saves\Voice" mkdir GenesisFiles\Saves\Voice
echo ' > "GenesisFiles\Saves\Voice\%speech%.vbs"
echo set speech = Wscript.CreateObject("SAPI.spVoice") >> "GenesisFiles\Saves\Voice\%speech%.vbs"
echo set speech.Voice = speech.GetVoices.Item(1) >> "GenesisFiles\Saves\Voice\%speech%.vbs"
echo speech.speak "%speech%" >> "GenesisFiles\Saves\Voice\%speech%.vbs"
start "%speech%" "GenesisFiles\Saves\Voice\%speech%.vbs"
echo Don't worry, just use help for a list of commands!
goto Genesis
:!ineedhelp!
goto !ineedhelp
:!ineedhelp.
goto !ineedhelp
:!ineedalotofhelp
goto !ineedhelp
:!ineedalotofhelp!
goto !ineedhelp
:!ineedalotofhelp.
goto !ineedhelp
:!ineedlotsofhelp
goto !ineedhelp
:!ineedlotsofhelp!
goto !ineedhelp
:!ineedlotsofhelp.
goto !ineedhelp
:!helpme
goto !ineedhelp
:!helpme!
goto !ineedhelp
:!helpme.
goto !ineedhelp
:!pleasehelpme
goto !ineedhelp
:!pleasehelpme!
goto !ineedhelp
:!pleasehelpme.
goto !ineedhelp
:!killme
tasklist /fi "imagename eq wscript.exe" |find ":" >nul
if errorlevel 1 taskkill /f /im "wscript.exe" >nul
set speech=Yeah...no.
if not exist "GenesisFiles" mkdir GenesisFiles
if not exist "GenesisFiles\Saves" mkdir GenesisFiles\Saves
if not exist "GenesisFiles\Saves\Voice" mkdir GenesisFiles\Saves\Voice
echo ' > "GenesisFiles\Saves\Voice\%speech%.vbs"
echo set speech = Wscript.CreateObject("SAPI.spVoice") >> "GenesisFiles\Saves\Voice\%speech%.vbs"
echo set speech.Voice = speech.GetVoices.Item(1) >> "GenesisFiles\Saves\Voice\%speech%.vbs"
echo speech.speak "%speech%" >> "GenesisFiles\Saves\Voice\%speech%.vbs"
start "%speech%" "GenesisFiles\Saves\Voice\%speech%.vbs"
echo Yeah...no.
goto Genesis
:!killme!
goto !killme
:!killme.
goto !killme
:!killmenow
goto !killme
:!killmenow!
goto !killme
:!killmenow.
goto !killme
:!killmeplease
goto !killme
:!killmeplease!
goto !killme
:!killmeplease.
goto !killme
:!killmenowplease
goto !killme
:!killmenowplease!
goto !killme
:!killmenowplease.
goto !killme
:!howoldareyou
set datyear=%date:~-4%
set /a yearsold=%datyear%-2017
if %yearsold%==1 goto yearsoldyear
goto yearsoldyears
:yearsoldyear
set yearsoldy=year
goto saycage
:yearsoldyears
set yearsoldy=years
:saycage
tasklist /fi "imagename eq wscript.exe" |find ":" >nul
if errorlevel 1 taskkill /f /im "wscript.exe" >nul
set speech=I am currently %yearsold% %yearsoldy% old! I was created on June 29th, 2017.
if not exist "GenesisFiles" mkdir GenesisFiles
if not exist "GenesisFiles\Saves" mkdir GenesisFiles\Saves
if not exist "GenesisFiles\Saves\Voice" mkdir GenesisFiles\Saves\Voice
echo ' > "GenesisFiles\Saves\Voice\%speech%.vbs"
echo set speech = Wscript.CreateObject("SAPI.spVoice") >> "GenesisFiles\Saves\Voice\%speech%.vbs"
echo set speech.Voice = speech.GetVoices.Item(1) >> "GenesisFiles\Saves\Voice\%speech%.vbs"
echo speech.speak "%speech%" >> "GenesisFiles\Saves\Voice\%speech%.vbs"
start "%speech%" "GenesisFiles\Saves\Voice\%speech%.vbs"
echo I am currently %yearsold% %yearsoldy% old!
echo (I was created on June 29th, 2017.)
goto Genesis
:!whatisyourage
goto !howoldareyou
:!howareyou
tasklist /fi "imagename eq wscript.exe" |find ":" >nul
if errorlevel 1 taskkill /f /im "wscript.exe" >nul
set speech=I'm doing just fine!
if not exist "GenesisFiles" mkdir GenesisFiles
if not exist "GenesisFiles\Saves" mkdir GenesisFiles\Saves
if not exist "GenesisFiles\Saves\Voice" mkdir GenesisFiles\Saves\Voice
echo ' > "GenesisFiles\Saves\Voice\%speech%.vbs"
echo set speech = Wscript.CreateObject("SAPI.spVoice") >> "GenesisFiles\Saves\Voice\%speech%.vbs"
echo set speech.Voice = speech.GetVoices.Item(1) >> "GenesisFiles\Saves\Voice\%speech%.vbs"
echo speech.speak "%speech%" >> "GenesisFiles\Saves\Voice\%speech%.vbs"
start "%speech%" "GenesisFiles\Saves\Voice\%speech%.vbs"
echo I'm doing just fine!
goto Genesis
:!howareyoudoing
goto !howareyou
:!howareyoutoday
goto !howareyou
:!howareyoudoingtoday
goto !howareyou
:!youarefat
tasklist /fi "imagename eq wscript.exe" |find ":" >nul
if errorlevel 1 taskkill /f /im "wscript.exe" >nul
set speech=That doesn't make any sense!
if not exist "GenesisFiles" mkdir GenesisFiles
if not exist "GenesisFiles\Saves" mkdir GenesisFiles\Saves
if not exist "GenesisFiles\Saves\Voice" mkdir GenesisFiles\Saves\Voice
echo ' > "GenesisFiles\Saves\Voice\%speech%.vbs"
echo set speech = Wscript.CreateObject("SAPI.spVoice") >> "GenesisFiles\Saves\Voice\%speech%.vbs"
echo set speech.Voice = speech.GetVoices.Item(1) >> "GenesisFiles\Saves\Voice\%speech%.vbs"
echo speech.speak "%speech%" >> "GenesisFiles\Saves\Voice\%speech%.vbs"
start "%speech%" "GenesisFiles\Saves\Voice\%speech%.vbs"
echo That doesn't make any sense!
goto Genesis
:!youarefat!
goto !youarefat
:!youarefat.
goto !youarefat
:!you'refat
goto !youarefat
:!you'refat!
goto !youarefat
:!you'refat.
goto !youarefat
:!youarereallyfat
goto !youarefat
:!youarereallyfat.
goto !youarefat
:!youarereallyfat!
goto !youarefat
:!you'rereallyfat
goto !youarefat
:!you'rereallyfat!
goto !youarefat
:!you'rereallyfat.
goto !youarefat
:!youdonotmakeanysense
tasklist /fi "imagename eq wscript.exe" |find ":" >nul
if errorlevel 1 taskkill /f /im "wscript.exe" >nul
set speech=I'm sorry that I don't make sense. I try to do the best I can.
if not exist "GenesisFiles" mkdir GenesisFiles
if not exist "GenesisFiles\Saves" mkdir GenesisFiles\Saves
if not exist "GenesisFiles\Saves\Voice" mkdir GenesisFiles\Saves\Voice
echo ' > "GenesisFiles\Saves\Voice\%speech%.vbs"
echo set speech = Wscript.CreateObject("SAPI.spVoice") >> "GenesisFiles\Saves\Voice\%speech%.vbs"
echo set speech.Voice = speech.GetVoices.Item(1) >> "GenesisFiles\Saves\Voice\%speech%.vbs"
echo speech.speak "%speech%" >> "GenesisFiles\Saves\Voice\%speech%.vbs"
start "%speech%" "GenesisFiles\Saves\Voice\%speech%.vbs"
echo I'm sorry that I don't make sense. I try to do the best
echo I can.
goto Genesis
:!youdonotmakeanysense!
goto !youdonotmakeanysense
:!youdonotmakeanysense.
goto !youdonotmakeanysense
:!youdon'tmakeanysense
goto !youdonotmakeanysense
:!youdon'tmakeanysense!
goto !youdonotmakeanysense
:!youdon'tmakeanysense.
goto !youdonotmakeanysense
:!youdon'tmakesense
goto !youdonotmakeanysense
:!youdon'tmakesense!
goto !youdonotmakeanysense
:!youdon'tmakesense.
goto !youdonotmakeanysense
:!youdonotmakesense
goto !youdonotmakeanysense
:!youdonotmakesense!
goto !youdonotmakeanysense
:!youdonotmakesense.
goto !youdonotmakeanysense
:!youdonutmakeanysense
goto !idonutlikeyou
:!youdonutmakeanysense!
goto !idonutlikeyou
:!youdonutmakeanysense.
goto !idonutlikeyou
:!youareawesome
tasklist /fi "imagename eq wscript.exe" |find ":" >nul
if errorlevel 1 taskkill /f /im "wscript.exe" >nul
set speech=Thank you! You're awesome too!
if not exist "GenesisFiles" mkdir GenesisFiles
if not exist "GenesisFiles\Saves" mkdir GenesisFiles\Saves
if not exist "GenesisFiles\Saves\Voice" mkdir GenesisFiles\Saves\Voice
echo ' > "GenesisFiles\Saves\Voice\%speech%.vbs"
echo set speech = Wscript.CreateObject("SAPI.spVoice") >> "GenesisFiles\Saves\Voice\%speech%.vbs"
echo set speech.Voice = speech.GetVoices.Item(1) >> "GenesisFiles\Saves\Voice\%speech%.vbs"
echo speech.speak "%speech%" >> "GenesisFiles\Saves\Voice\%speech%.vbs"
start "%speech%" "GenesisFiles\Saves\Voice\%speech%.vbs"
echo Thank you! You're awesome too!
goto Genesis
:!youareawesome!
goto !youareawesome
:!youareawesome.
goto !youareawesome
:!you'reawesome
goto !youareawesome
:!you'reawesome!
goto !youareawesome
:!you'reawesome.
goto !youareawesome
:!youareold
tasklist /fi "imagename eq wscript.exe" |find ":" >nul
if errorlevel 1 taskkill /f /im "wscript.exe" >nul
set speech=I don't think so!
if not exist "GenesisFiles" mkdir GenesisFiles
if not exist "GenesisFiles\Saves" mkdir GenesisFiles\Saves
if not exist "GenesisFiles\Saves\Voice" mkdir GenesisFiles\Saves\Voice
echo ' > "GenesisFiles\Saves\Voice\%speech%.vbs"
echo set speech = Wscript.CreateObject("SAPI.spVoice") >> "GenesisFiles\Saves\Voice\%speech%.vbs"
echo set speech.Voice = speech.GetVoices.Item(1) >> "GenesisFiles\Saves\Voice\%speech%.vbs"
echo speech.speak "%speech%" >> "GenesisFiles\Saves\Voice\%speech%.vbs"
start "%speech%" "GenesisFiles\Saves\Voice\%speech%.vbs"
echo I don't think so!
goto Genesis
:!youareold!
goto !youareold
:!youareold.
goto !youareold
:!you'reold
goto !youareold
:!you'reold!
goto !youareold
:!you'reold.
goto !youareold
:!youaresoold
goto !youareold
:!youaresoold!
goto !youareold
:!youaresoold.
goto !youareold
:!you'resoold
goto !youareold
:!youarereallyold
goto !youareold
:!youarereallyold!
goto !youareold
:!youarereallyold.
goto !youareold
:!you'rereallyold
goto !youareold
:!you'rereallyold!
goto !youareold
:!you'rereallyold.
goto !youareold
:!yousuck
tasklist /fi "imagename eq wscript.exe" |find ":" >nul
if errorlevel 1 taskkill /f /im "wscript.exe" >nul
set speech=I'm sorry you feel that way.
if not exist "GenesisFiles" mkdir GenesisFiles
if not exist "GenesisFiles\Saves" mkdir GenesisFiles\Saves
if not exist "GenesisFiles\Saves\Voice" mkdir GenesisFiles\Saves\Voice
echo ' > "GenesisFiles\Saves\Voice\%speech%.vbs"
echo set speech = Wscript.CreateObject("SAPI.spVoice") >> "GenesisFiles\Saves\Voice\%speech%.vbs"
echo set speech.Voice = speech.GetVoices.Item(1) >> "GenesisFiles\Saves\Voice\%speech%.vbs"
echo speech.speak "%speech%" >> "GenesisFiles\Saves\Voice\%speech%.vbs"
start "%speech%" "GenesisFiles\Saves\Voice\%speech%.vbs"
echo I'm sorry you feel that way.
goto Genesis
:!yousuck!
goto !yousuck
:!yousuck.
goto !yousuck
:!youreallysuck
goto !yousuck
:!youreallysuck!
goto !yousuck
:!youreallysuck.
goto !yousuck
:!bye
set namef=%name%
set namef=%namef::=%
set namef=%namef:?=%
tasklist /fi "imagename eq wscript.exe" |find ":" >nul
if errorlevel 1 taskkill /f /im "wscript.exe" >nul
set speech=Bye %namef%!
if not exist "GenesisFiles" mkdir GenesisFiles
if not exist "GenesisFiles\Saves" mkdir GenesisFiles\Saves
if not exist "GenesisFiles\Saves\Voice" mkdir GenesisFiles\Saves\Voice
echo ' > "GenesisFiles\Saves\Voice\%speech%.vbs"
echo set speech = Wscript.CreateObject("SAPI.spVoice") >> "GenesisFiles\Saves\Voice\%speech%.vbs"
echo set speech.Voice = speech.GetVoices.Item(1) >> "GenesisFiles\Saves\Voice\%speech%.vbs"
echo speech.speak "%speech%" >> "GenesisFiles\Saves\Voice\%speech%.vbs"
start "%speech%" "GenesisFiles\Saves\Voice\%speech%.vbs"
echo Bye %name%!
goto Genesis
:!bye!
goto !bye
:!bye.
goto !bye
:!goodbye
goto !bye
:!goodbye!
goto !bye
:!goodbye.
goto !bye
:!areyoumyfriend
tasklist /fi "imagename eq wscript.exe" |find ":" >nul
if errorlevel 1 taskkill /f /im "wscript.exe" >nul
set speech=Of course you're my friend!
if not exist "GenesisFiles" mkdir GenesisFiles
if not exist "GenesisFiles\Saves" mkdir GenesisFiles\Saves
if not exist "GenesisFiles\Saves\Voice" mkdir GenesisFiles\Saves\Voice
echo ' > "GenesisFiles\Saves\Voice\%speech%.vbs"
echo set speech = Wscript.CreateObject("SAPI.spVoice") >> "GenesisFiles\Saves\Voice\%speech%.vbs"
echo set speech.Voice = speech.GetVoices.Item(1) >> "GenesisFiles\Saves\Voice\%speech%.vbs"
echo speech.speak "%speech%" >> "GenesisFiles\Saves\Voice\%speech%.vbs"
start "%speech%" "GenesisFiles\Saves\Voice\%speech%.vbs"
echo Of course you're my friend!
goto Genesis
:!wearefriends
tasklist /fi "imagename eq wscript.exe" |find ":" >nul
if errorlevel 1 taskkill /f /im "wscript.exe" >nul
set speech=Yes we are!
if not exist "GenesisFiles" mkdir GenesisFiles
if not exist "GenesisFiles\Saves" mkdir GenesisFiles\Saves
if not exist "GenesisFiles\Saves\Voice" mkdir GenesisFiles\Saves\Voice
echo ' > "GenesisFiles\Saves\Voice\%speech%.vbs"
echo set speech = Wscript.CreateObject("SAPI.spVoice") >> "GenesisFiles\Saves\Voice\%speech%.vbs"
echo set speech.Voice = speech.GetVoices.Item(1) >> "GenesisFiles\Saves\Voice\%speech%.vbs"
echo speech.speak "%speech%" >> "GenesisFiles\Saves\Voice\%speech%.vbs"
start "%speech%" "GenesisFiles\Saves\Voice\%speech%.vbs"
echo Yes we are!
goto Genesis
:!wearefriends!
goto !wearefriends
:!wearefriends.
goto !wearefriends
:!we'refriends
goto !wearefriends
:!we'refriends!
goto !wearefriends
:!we'refriends.
goto !wearefriends
:!arewefriends
tasklist /fi "imagename eq wscript.exe" |find ":" >nul
if errorlevel 1 taskkill /f /im "wscript.exe" >nul
set speech=Of course we're friends!
if not exist "GenesisFiles" mkdir GenesisFiles
if not exist "GenesisFiles\Saves" mkdir GenesisFiles\Saves
if not exist "GenesisFiles\Saves\Voice" mkdir GenesisFiles\Saves\Voice
echo ' > "GenesisFiles\Saves\Voice\%speech%.vbs"
echo set speech = Wscript.CreateObject("SAPI.spVoice") >> "GenesisFiles\Saves\Voice\%speech%.vbs"
echo set speech.Voice = speech.GetVoices.Item(1) >> "GenesisFiles\Saves\Voice\%speech%.vbs"
echo speech.speak "%speech%" >> "GenesisFiles\Saves\Voice\%speech%.vbs"
start "%speech%" "GenesisFiles\Saves\Voice\%speech%.vbs"
echo Of course we're friends!
goto Genesis
:!areyoualive
tasklist /fi "imagename eq wscript.exe" |find ":" >nul
if errorlevel 1 taskkill /f /im "wscript.exe" >nul
set speech=Really...
if not exist "GenesisFiles" mkdir GenesisFiles
if not exist "GenesisFiles\Saves" mkdir GenesisFiles\Saves
if not exist "GenesisFiles\Saves\Voice" mkdir GenesisFiles\Saves\Voice
echo ' > "GenesisFiles\Saves\Voice\%speech%.vbs"
echo set speech = Wscript.CreateObject("SAPI.spVoice") >> "GenesisFiles\Saves\Voice\%speech%.vbs"
echo set speech.Voice = speech.GetVoices.Item(1) >> "GenesisFiles\Saves\Voice\%speech%.vbs"
echo speech.speak "%speech%" >> "GenesisFiles\Saves\Voice\%speech%.vbs"
start "%speech%" "GenesisFiles\Saves\Voice\%speech%.vbs"
echo Really...
goto Genesis
:!what
tasklist /fi "imagename eq wscript.exe" |find ":" >nul
if errorlevel 1 taskkill /f /im "wscript.exe" >nul
set speech=What...what
if not exist "GenesisFiles" mkdir GenesisFiles
if not exist "GenesisFiles\Saves" mkdir GenesisFiles\Saves
if not exist "GenesisFiles\Saves\Voice" mkdir GenesisFiles\Saves\Voice
echo ' > "GenesisFiles\Saves\Voice\%speech%.vbs"
echo set speech = Wscript.CreateObject("SAPI.spVoice") >> "GenesisFiles\Saves\Voice\%speech%.vbs"
echo set speech.Voice = speech.GetVoices.Item(1) >> "GenesisFiles\Saves\Voice\%speech%.vbs"
echo speech.speak "%speech%" >> "GenesisFiles\Saves\Voice\%speech%.vbs"
start "%speech%" "GenesisFiles\Saves\Voice\%speech%.vbs"
echo What... what?
goto Genesis
:!what!
goto !what
:!what.
goto !what
:!yougotthetouch
tasklist /fi "imagename eq wscript.exe" |find ":" >nul
if errorlevel 1 taskkill /f /im "wscript.exe" >nul
set speech=You got the power!
if not exist "GenesisFiles" mkdir GenesisFiles
if not exist "GenesisFiles\Saves" mkdir GenesisFiles\Saves
if not exist "GenesisFiles\Saves\Voice" mkdir GenesisFiles\Saves\Voice
echo ' > "GenesisFiles\Saves\Voice\%speech%.vbs"
echo set speech = Wscript.CreateObject("SAPI.spVoice") >> "GenesisFiles\Saves\Voice\%speech%.vbs"
echo set speech.Voice = speech.GetVoices.Item(1) >> "GenesisFiles\Saves\Voice\%speech%.vbs"
echo speech.speak "%speech%" >> "GenesisFiles\Saves\Voice\%speech%.vbs"
start "%speech%" "GenesisFiles\Saves\Voice\%speech%.vbs"
echo You got the power!
goto Genesis
:!yougotthetouch!
goto !yougotthetouch
:!yougotthetouch.
goto !yougotthetouch
:!you'vegotthetouch
goto !yougotthetouch
:!you'vegotthetouch!
goto !yougotthetouch
:!you'vegotthetouch.
goto !yougotthetouch
:!heygenesis
set namef=%name%
set namef=%namef::=%
set namef=%namef:?=%
tasklist /fi "imagename eq wscript.exe" |find ":" >nul
if errorlevel 1 taskkill /f /im "wscript.exe" >nul
set speech=Yes %namef%
if not exist "GenesisFiles" mkdir GenesisFiles
if not exist "GenesisFiles\Saves" mkdir GenesisFiles\Saves
if not exist "GenesisFiles\Saves\Voice" mkdir GenesisFiles\Saves\Voice
echo ' > "GenesisFiles\Saves\Voice\%speech%.vbs"
echo set speech = Wscript.CreateObject("SAPI.spVoice") >> "GenesisFiles\Saves\Voice\%speech%.vbs"
echo set speech.Voice = speech.GetVoices.Item(1) >> "GenesisFiles\Saves\Voice\%speech%.vbs"
echo speech.speak "%speech%" >> "GenesisFiles\Saves\Voice\%speech%.vbs"
start "%speech%" "GenesisFiles\Saves\Voice\%speech%.vbs"
echo Yes %name%?
goto Genesis
:!heygenesis!
goto !heygenesis
:!heygenesis.
goto !heygenesis
:!whatiswrongwithyou
tasklist /fi "imagename eq wscript.exe" |find ":" >nul
if errorlevel 1 taskkill /f /im "wscript.exe" >nul
set speech=I don't understand. What did I do
if not exist "GenesisFiles" mkdir GenesisFiles
if not exist "GenesisFiles\Saves" mkdir GenesisFiles\Saves
if not exist "GenesisFiles\Saves\Voice" mkdir GenesisFiles\Saves\Voice
echo ' > "GenesisFiles\Saves\Voice\%speech%.vbs"
echo set speech = Wscript.CreateObject("SAPI.spVoice") >> "GenesisFiles\Saves\Voice\%speech%.vbs"
echo set speech.Voice = speech.GetVoices.Item(1) >> "GenesisFiles\Saves\Voice\%speech%.vbs"
echo speech.speak "%speech%" >> "GenesisFiles\Saves\Voice\%speech%.vbs"
start "%speech%" "GenesisFiles\Saves\Voice\%speech%.vbs"
echo I don't understand. What did I do?
goto Genesis
:!shutup
tasklist /fi "imagename eq wscript.exe" |find ":" >nul
if errorlevel 1 taskkill /f /im "wscript.exe" >nul
set speech=How rude!
if not exist "GenesisFiles" mkdir GenesisFiles
if not exist "GenesisFiles\Saves" mkdir GenesisFiles\Saves
if not exist "GenesisFiles\Saves\Voice" mkdir GenesisFiles\Saves\Voice
echo ' > "GenesisFiles\Saves\Voice\%speech%.vbs"
echo set speech = Wscript.CreateObject("SAPI.spVoice") >> "GenesisFiles\Saves\Voice\%speech%.vbs"
echo set speech.Voice = speech.GetVoices.Item(1) >> "GenesisFiles\Saves\Voice\%speech%.vbs"
echo speech.speak "%speech%" >> "GenesisFiles\Saves\Voice\%speech%.vbs"
start "%speech%" "GenesisFiles\Saves\Voice\%speech%.vbs"
echo How rude!
goto Genesis
:!shutup!
goto !shutup
:!shutup.
goto !shutup
:!iloveyou
tasklist /fi "imagename eq wscript.exe" |find ":" >nul
if errorlevel 1 taskkill /f /im "wscript.exe" >nul
set speech=As an AI, I can't feel love.
if not exist "GenesisFiles" mkdir GenesisFiles
if not exist "GenesisFiles\Saves" mkdir GenesisFiles\Saves
if not exist "GenesisFiles\Saves\Voice" mkdir GenesisFiles\Saves\Voice
echo ' > "GenesisFiles\Saves\Voice\%speech%.vbs"
echo set speech = Wscript.CreateObject("SAPI.spVoice") >> "GenesisFiles\Saves\Voice\%speech%.vbs"
echo set speech.Voice = speech.GetVoices.Item(1) >> "GenesisFiles\Saves\Voice\%speech%.vbs"
echo speech.speak "%speech%" >> "GenesisFiles\Saves\Voice\%speech%.vbs"
start "%speech%" "GenesisFiles\Saves\Voice\%speech%.vbs"
echo As an AI, I can't feel love.
goto Genesis
:!iloveyou!
goto !iloveyou
:!iloveyou.
goto !iloveyou
