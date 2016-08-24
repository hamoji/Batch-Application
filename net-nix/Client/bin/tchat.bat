@echo off 
title %computername%@NET-NIX: Echange de fichier

echo.
echo        ษออออออออออออออออออออออออออออออออออออออออออออออออออออออป
echo        บ  Pour debuter le Tchat entrer l'addresse du serveur  บ
echo        ศออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
echo.
echo        http://Enixlearning.blogspot.com
echo.
echo.
set /p ip=Entrer le nom ou l'ip du poste serveur: 
cls
:debut
echo.
echo        ษอออออออออออออออออออออออออออออป
echo        บ Zone de Tchat NET-NIX v1.0  บ
echo        ศอออออออออออออออออออออออออออออผ
echo.
echo        http://Enixlearning.blogspot.com
echo.
echo.
echo   ออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
rem tchat
ncat -vv %ip% 51234
pause
