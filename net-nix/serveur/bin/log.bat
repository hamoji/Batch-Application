@echo off
title Serveur@NET-NIX
:debut
echo.
echo             ษออออออออออออออออออออออออป
echo             บ   Serveur  Net-Nix     บ
echo             ศออออออออออออออออออออออออผ
echo.
echo           http://Enixlearning.blogspot.com
echo.
echo.
echo     ษออออออออออออออออออออออออออออออออออออออออออออออออป
echo     บ                                                บ
echo     บ     1) Tchat                                   บ
echo     บ     2) Echange de fichier                      บ
echo     บ     3) Controle d'une machine distante         บ
echo     บ     4) Configurer votre reseau                 บ
echo     บ     5) Autres options                          บ
echo     บ                                                บ
echo     บ     Q) Quitter                                 บ
echo     บ                                                บ
echo     ศออออออออออออออออออออออออออออออออออออออออออออออออผ
echo.
echo.

	set /p choix=Entrer l'indice correspondant … votre choix: 
	if "%choix%"=="1" goto tchat
	if "%choix%"=="2" goto echange
	if "%choix%"=="3" goto controle
	if "%choix%"=="4" goto network
	if "%choix%"=="5" goto user
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
	
    :controle
    cls
	call controle.bat
	cls
	pause >> nul
	
	:network
	cls
	call reseau.bat
	cls
	pause >> nul
	
	:user
	cls
	call option.bat
	cls
    pause >> nul
	
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
		
	
	
