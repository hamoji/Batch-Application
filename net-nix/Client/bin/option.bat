@echo off
title %computername%@NET-NIX: Option supplementaires
:debut
echo.
echo        ������������������������ͻ
echo        � options supl�mentaires �
echo        ������������������������ͼ
echo.
echo        http://Enixlearning.blogspot.com
echo.
echo.
echo     ������������������������������������������������ͻ
echo     �                                                �
echo     �     1) Utilisateurs connect�                   �
echo     �     2) Connexions entrentes                    �
echo     �     3) Reparer lecteur                         �
echo     �     4) Information sur mon pc                  �
echo     �     5) Aide                                    �
echo     �                                                �
echo     �     R) Retour                                  �
echo     �     Q) Quitter                                 �
echo     �                                                �
echo     ������������������������������������������������ͼ
echo.
echo.
echo.

set /p ch5=Entrer l'indice correspondant � votre choix: 
	
	if "%ch5%"=="1" goto user
	if "%ch5%"=="2" goto connexion
	if "%ch5%"=="3" goto reparer
	if "%ch5%"=="4" goto info
	if "%ch5%"=="5" goto aide
	if "%ch5%"=="R" goto retour
	if "%ch5%"=="r" goto retour
	if "%ch5%"=="Q" goto quit
	if "%ch5%"=="q" goto quit
	if not "%ch5%"=="Q" goto erreur
	
		:user
		net view
		pause >> nul
		cls
		goto debut
		
		:connexion
		netstat
		pause >> nul
		cls
		goto debut
		
		:reparer
		set /p lect=entrer la lettre de votre lecteur
		chkdsk %lect%
		attrib -a -h -r %lect% /s /d
		del %lect%\*.lnk
		del %lect%\*.vbs
		echo verification effectue avec succes
		pause >> nul
		cls
		goto debut
		
		:info
		echo ________________________________________________________
		echo.
		echo information sur %username%
		echo ________________________________________________________
		systeminfo
		echo ________________________________________________________
		echo.
		echo appuyer sur une touche pour revenir 
		pause >> nul
		cls
		goto debut
		
		:retour
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
		echo      ����������������������������ͻ
		echo      �                            �
        echo      � enixlearning.blogspot.com  �
		echo      �                            �
		echo      �  enixlearning@gmail.com    �
		echo      �                            �
		echo      ����������������������������ͼ
		pause >> nul
		exit
		
		:aide
		
	
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
		
		
		

