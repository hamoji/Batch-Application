@echo off
title Serveur@NET-NIX: controle 
:debut
echo.
echo.
echo         浜様様様様様様様様様様様様様様様様様様様様様様様�
echo         � Interfaces de controle des machines clientes  �
echo         藩様様様様様様様様様様様様様様様様様様様様様様様�
echo.
echo                 http://Enixlearning.blogspot.com
echo.
echo.
echo     cet interface permet � l'administrateur du r�seau de mieu 
echo     controler les machines clientes toutesfois une meilleure
echo    connaissance des lignes de commandes est vivements conseill�s
echo   陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳�
echo.
	set /p ctrl= Continuer ? (O/N) 

	rem ------------------------------------------------------
	rem controle accepter
	rem ------------------------------------------------------
	
	if "%ctrl%"=="O" goto remote
	if "%ctrl%"=="o" goto remote
	if "%ctrl%"=="N" goto debut
	if "%ctrl%"=="n" goto debut
	if "%ctrl%"=="R" goto retour
	if "%ctrl%"=="r" goto retour
	if "%ctrl%"=="Q" goto quit
	if "%ctrl%"=="q" goto quit
	if not "%ctrl%"=="q" goto erreur
		
		:remote
		echo Vous aller desormais manipuler le DOS de votre poste client
		echo -----------------------------------------------------------
		pause >> nul
		ncat -vv -o remote.txt -l -p 51234
		
		:retour
		cls
		call log.bat
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
