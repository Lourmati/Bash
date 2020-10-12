@echo off
rem Auteur: Oussama Lourhmati
echo Bienvenue
echo.
:menu
echo.
echo ************************************
echo * MENU:                            *
echo ************************************
echo *                                  *
echo * 1- Script 2 (message)            *
echo * 2- Script 3 (sauvegarde)         *
echo * 3- Script 4 (Afficher la date)   *
echo * 4- Script 5 (petites operations) *
echo * 5- Quitter                       *
echo *                                  *
echo ************************************
echo.
set /p choix=Veuillez entrer votre choix :

if %choix%==1 (
start message.bat
goto menu
)

if %choix%==2 (
mkdir sauvegarde
xcopy *.* c:\sauvegarde 
goto menu
)

if %choix%==3 (
start afficheDate.bat
goto menu
)

if %choix%==4 (
start jeSuisCreatif.bat
goto menu
)

if %choix%==5 (
color 8f
echo.
echo MERCI ET BONNE JOURNEE!
echo.
pause
exit
)

