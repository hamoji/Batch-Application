@echo off
title Serveur: Net-nix Tchat
:debut
echo.
echo        ษออออออออออออออออออออออออออออออออออออออป
echo        บ      Zone de Tchat NET-NIX v1.0      บ
echo        ศออออออออออออออออออออออออออออออออออออออผ
echo.
echo        http://Enixlearning.blogspot.com
echo.
echo.
echo   อออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
rem tchat
ncat -vv -l -o tchat.txt -p 51234
