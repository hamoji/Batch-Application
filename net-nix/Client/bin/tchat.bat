@echo off 
title %computername%@NET-NIX: Echange de fichier

echo.
echo        ������������������������������������������������������ͻ
echo        �  Pour debuter le Tchat entrer l'addresse du serveur  �
echo        ������������������������������������������������������ͼ
echo.
echo        http://Enixlearning.blogspot.com
echo.
echo.
set /p ip=Entrer le nom ou l'ip du poste serveur: 
cls
:debut
echo.
echo        �����������������������������ͻ
echo        � Zone de Tchat NET-NIX v1.0  �
echo        �����������������������������ͼ
echo.
echo        http://Enixlearning.blogspot.com
echo.
echo.
echo   �����������������������������������������������������������������͍
rem tchat
ncat -vv %ip% 51234
pause
