@echo off
title Serveur: Net-nix Tchat
:debut
echo.
echo        ��������������������������������������ͻ
echo        �      Zone de Tchat NET-NIX v1.0      �
echo        ��������������������������������������ͼ
echo.
echo        http://Enixlearning.blogspot.com
echo.
echo.
echo   �������������������������������������������������������������
rem tchat
ncat -vv -l -o tchat.txt -p 51234
