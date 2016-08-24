@echo off
title %computername%@NET-NIX
:debut
echo.
echo             ษออออออออออออออออออออออออออออป
echo             บ    Client  Net-Nix v1.0    บ
echo             ศออออออออออออออออออออออออออออผ
echo.
echo           http://Enixlearning.blogspot.com
echo.
echo.
echo     ษออออออออออออออออออออออออออออออออออออออออออออออออป
echo     บ                                                บ
echo     บ     1) Tchat                                   บ
echo     บ     2) Echange de fichier                      บ
echo     บ     3) Configurer votre reseau                 บ
echo     บ     4) Autres options                          บ
echo     บ     4) Aide                                    บ
echo     บ                                                บ
echo     บ     Q) Quitter                                 บ
echo     บ                                                บ
echo     ศออออออออออออออออออออออออออออออออออออออออออออออออผ
echo.
echo.

	rem ---------------------------------------------------------------
	rem client Net-nix
	rem ---------------------------------------------------------------
	set /p choix=Entrer l'indice correspondant … votre choix: 
	if "%choix%"=="1" goto tchat
	if "%choix%"=="2" goto echange
	if "%choix%"=="3" goto network
	if "%choix%"=="4" goto user
	if "%choix%"=="5" goto aide
	if "%choix%"=="Q" goto quit 
	if "%choix%"=="q" goto quit 
	if not "%choix%"=="q" goto erreur 
	
	:tchat
	cls
	start tchat.bat
	cls
	pause >> nul
	goto debut
	
    :echange
    cls
	call echange.bat
	cls
	pause >> nul
	
	:network
	cls
	call reseau.bat
	cls
	pause >> nul
	
	:user
	cls
	call user.bat
	cls
    pause >> nul
	
	:aide
	
	:quit
	    cls
        echo.
	    echo.
		echo      Merci d'avoir utiliser ce programme
		echo.
		echo    Pour toutes suggestions ou apprciations
		echo.
		echo   Rendez vous sur notre blog ou ecrivez nous
		echo.
		echo      ษออออออออออออออออออออออออออออป
		echo      บ                            บ
        echo      บ enixlearning.blogspot.com  บ
		echo      บ                            บ
		echo      บ  enixlearning@gmail.com    บ
		echo      บ                            บ
		echo      ศออออออออออออออออออออออออออออผ
		pause >> nul
		exit
	
	:erreur
		cls
		echo.
		echo.
		echo.
		echo.
		echo.
		echo.
		echo.
		echo.
		echo      ษออออออออออออออออออออออออออออป
		echo      บ                            บ
        echo      บ mauvaise entrees reessayer บ
		echo      บ                            บ
		echo      ศออออออออออออออออออออออออออออผ
		pause >> nul
		cls 
		goto debut
		
	
	
