@echo off
title Serveur@NET-NIX: Echange de fichier
:debut
echo.
echo        ���������������������������ͻ
echo        � Zone d'�change de fichier �
echo        ���������������������������ͼ
echo.
echo        http://Enixlearning.blogspot.com
echo.
echo.
echo     ������������������������������������������������ͻ
echo     �                                                �
echo     �     1) Transfert de fichier                    �
echo     �     2) Reception de fichier                    �
echo     �     3) Aide                                    �
echo     �                                                �
echo     �     R) Retour                                  �
echo     �     Q) Quitter                                 �
echo     �                                                �
echo     ������������������������������������������������ͼ
echo.
echo.
	set /p ts=Entrer l'indice correspondant � votre choix: 
	echo.
	echo.	
		if "%ts%"=="1" goto transfert
		if "%ts%"=="2" goto reception
		if "%ts%"=="3" goto aide
		if "%ts%"=="R" goto retour
		if "%ts%"=="r" goto retour
		if "%ts%"=="Q" goto quit
		if "%ts%"=="q" goto quit
		if not "%ts%"=="q" goto erreur
		
		
		:transfert
			set /p ts_f=Entrer le chemin d'acc�s du fichier � envoyer
			ncat -vv -o trans.txt -l -p 51234 < %ts_f%
			echo transfert termine ...
			pause >> nul
			cls
			goto debut
		
		:reception
			set /p rc_f=Entrer le nom ou le chemin d'acc�s ou vous souhaiteriez sauvegarder le fichier re�ue
			ncat -vv -o recep.txt -l -p 51234 < %rc_f%
			echo transfert termine ...
			goto debut
		
		:aide
		echo manuel d'aide
		pause >>nul
		goto debut
		
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
