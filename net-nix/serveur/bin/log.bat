@echo off
title Serveur@NET-NIX
:debut
echo.
echo             ������������������������ͻ
echo             �   Serveur  Net-Nix     �
echo             ������������������������ͼ
echo.
echo           http://Enixlearning.blogspot.com
echo.
echo.
echo     ������������������������������������������������ͻ
echo     �                                                �
echo     �     1) Tchat                                   �
echo     �     2) Echange de fichier                      �
echo     �     3) Controle d'une machine distante         �
echo     �     4) Configurer votre reseau                 �
echo     �     5) Autres options                          �
echo     �                                                �
echo     �     Q) Quitter                                 �
echo     �                                                �
echo     ������������������������������������������������ͼ
echo.
echo.

	set /p choix=Entrer l'indice correspondant � votre choix: 
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
		echo    Pour toutes suggestions ou appr�ciations
		echo.
		echo   Rendez vous sur notre blog ou ecrivez nous
		echo.
		echo      ����������������������������ͻ
		echo      �                            �
        echo      � enixlearning.blogspot.com  �
		echo      �                            �
		echo      �  enixlearning@gmail.com    �
		echo      �                            �
		echo      ����������������������������ͼ
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
		echo      ����������������������������ͻ
		echo      �                            �
        echo      � mauvaise entrees reessayer �
		echo      �                            �
		echo      ����������������������������ͼ
		pause >> nul
		cls 
		goto debut
		
	
	
