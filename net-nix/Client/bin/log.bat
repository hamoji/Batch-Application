@echo off
title %computername%@NET-NIX
:debut
echo.
echo             浜様様様様様様様様様様様様様融
echo             �    Client  Net-Nix v1.0    �
echo             藩様様様様様様様様様様様様様夕
echo.
echo           http://Enixlearning.blogspot.com
echo.
echo.
echo     浜様様様様様様様様様様様様様様様様様様様様様様様融
echo     �                                                �
echo     �     1) Tchat                                   �
echo     �     2) Echange de fichier                      �
echo     �     3) Configurer votre reseau                 �
echo     �     4) Autres options                          �
echo     �     4) Aide                                    �
echo     �                                                �
echo     �     Q) Quitter                                 �
echo     �                                                �
echo     藩様様様様様様様様様様様様様様様様様様様様様様様夕
echo.
echo.

	rem ---------------------------------------------------------------
	rem client Net-nix
	rem ---------------------------------------------------------------
	set /p choix=Entrer l'indice correspondant � votre choix: 
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
		echo    Pour toutes suggestions ou appr�ciations
		echo.
		echo   Rendez vous sur notre blog ou ecrivez nous
		echo.
		echo      浜様様様様様様様様様様様様様融
		echo      �                            �
        echo      � enixlearning.blogspot.com  �
		echo      �                            �
		echo      �  enixlearning@gmail.com    �
		echo      �                            �
		echo      藩様様様様様様様様様様様様様夕
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
		echo      浜様様様様様様様様様様様様様融
		echo      �                            �
        echo      � mauvaise entrees reessayer �
		echo      �                            �
		echo      藩様様様様様様様様様様様様様夕
		pause >> nul
		cls 
		goto debut
		
	
	
