@ echo off
rem Auteur: Oussama Lourhmati


:maboucle
cls
color 1b
echo Addition
set /p nom1=Un premier nombre :
set /p nom2=Un deuxieme nombre :
set /a add = %nom1%+%nom2%
color 1c
echo %nom1% + %nom2% = %add%

echo. 
color 2a            
echo Soustraction
set /p nom3=Un troisieme nombre :
set /p nom4=Un quatrieme nombre :
set /a sous = %nom3%-%nom4%
color 7f
echo %nom3% - %nom4% = %sous%
echo.

color 1c
echo APPUYER SUR ENTRER POUR VOIR L'HEURE EN DIRECT
pause

rem heure en direct

@setlocal & echo off & mode 70,10 
color 9b
Call :tmz1
:tmz2
setlocal enableextensions enabledelayedexpansion
for %%: in (":=" ",=" " =0") do set "time=!time:%%~:!"
for /l %%i in (0 1 8) Do ( set /az+=1
  Set $t!z!=!time:~%%i,1!
)
for /f "tokens=2 delims==" %%i in ('set $t') do (
  for /l %%p in (1 1 5) do ( set /ao+=1     
      set _!o!=!%%i.%%p!
  )
)
cls
echo.
echo.
echo    %_1% %_6%  %_11% %_16%  %_21% %_26%  %_31% %_36%
echo    %_2% %_7%  %_12% %_17%  %_22% %_27%  %_32% %_37%
echo    %_3% %_8%  %_13% %_18%  %_23% %_28%  %_33% %_38%
echo    %_4% %_9%  %_14% %_19%  %_24% %_29%  %_34% %_39%
echo    %_5% %_10%  %_15% %_20%  %_25% %_30%  %_35% %_40%
endlocal & goto :tmz2
:tmz1
set "0.1=oooooo"&set "1.1=  ooo "&set "2.1=oooooo"&set "3.1=oooooo"&set "4.1=    oo "
set "0.2=o    o"&set "1.2=    o "&set "2.2=     o"&set "3.2=     o"&set "4.2=   o o "
set "0.3=o    o"&set "1.3=    o "&set "2.3=oooooo"&set "3.3=  oooo"&set "4.3=  o  o "
set "0.4=o    o"&set "1.4=    o "&set "2.4=o     "&set "3.4=     o"&set "4.4= oooooo"
set "0.5=oooooo"&set "1.5=  oooo"&set "2.5=oooooo"&set "3.5=oooooo"&set "4.5=     o "
set "5.1=oooooo"&set "6.1=oooooo"&set "7.1=oooooo"&set "8.1=oooooo"&set "9.1=oooooo"
set "5.2=o     "&set "6.2=o     "&set "7.2=    o "&set "8.2=o    o"&set "9.2=o    o"
set "5.3=oooooo"&set "6.3=oooooo"&set "7.3=   o  "&set "8.3=oooooo"&set "9.3=oooooo"
set "5.4=     o"&set "6.4=o    o"&set "7.4=   o  "&set "8.4=o    o"&set "9.4=     o"
set "5.5=oooooo"&set "6.5=oooooo"&set "7.5=   o  "&set "8.5=oooooo"&set "9.5=oooooo"
goto :EOF






