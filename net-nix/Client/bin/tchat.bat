@echo off 
title %computername%@NET-NIX: Echange de fichier

echo.
echo        浜様様様様様様様様様様様様様様様様様様様様様様様様様様融
echo        �  Pour debuter le Tchat entrer l'addresse du serveur  �
echo        藩様様様様様様様様様様様様様様様様様様様様様様様様様様夕
echo.
echo        http://Enixlearning.blogspot.com
echo.
echo.
set /p ip=Entrer le nom ou l'ip du poste serveur: 
cls
:debut
echo.
echo        浜様様様様様様様様様様様様様様�
echo        � Zone de Tchat NET-NIX v1.0  �
echo        藩様様様様様様様様様様様様様様�
echo.
echo        http://Enixlearning.blogspot.com
echo.
echo.
echo   様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様�
rem tchat
ncat -vv %ip% 51234
pause
