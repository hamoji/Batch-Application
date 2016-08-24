@echo off
color 2
echo ********************************************************************************
echo ********************************************************************************
echo ********************************************************************************
echo -------------   ---------             -------   -----   -------           ------
echo -------------   ----------            -------   -----   -------           ------    
echo -------------   -----------           -------   -----    -------         -------
echo ------          -------  ---          -------   -----      ------       -------
echo ------          -------   ---         -------   -----       ------     -------
echo ------          -------    ---        -------   -----        ------   -------
echo -------------   -------     ---       -------   -----          -----------
echo -------------   -------      ---      -------   -----           --------
echo -------------   -------       ---     -------   -----           --------
echo -----           -------        ---    -------   -----         ------------ 
echo -----           -------         ---   -------   -----       -------   -------
echo -----           -------          ---  -------   -----     -------       ------
echo -------------   -------           --- -------   -----    -------         -------
echo -------------   -------            ----------   -----   -------           ------     
echo -------------   -------             ---------   -----   -------           ------
echo ********************************************************************************
echo ******************************** BY MASTER ENIX ********************************
echo ********************************************************************************
pause >> nul
CLS 
color 3
echo  *----------------------------------------*
echo * on attend vos commentaires et suggestions*
echo  *----------------------------------------*
echo ------------------------------------------------------------------------
echo ce programme a pour but de vous faciliter la configuration de votre LAN
 :i1
echo ------------------------------------------------------------------------  
echo 1: mode rapide
echo 2: mode personnalisee
echo ------------------------------------------------------------------------  
set /p choix=indiquer votre mode de configuration 
cls
rem  configuration rapide
if "%choix%" == "1" (
	color 6
	echo entrer l'identifiant numerique du poste
	echo le numero que vous entrer represente la derniere plage d'adresse ip 
	echo de ce poste
	echo Donc veuiller  entrez un nombre compris entre 1 et 255
	set /p a=identifiant :
	echo ---------------------------------------------------------------------
	echo ...
	netsh interface ipv4 set address %ENIX_LAN% source=dhcp
	echo fin modification 
	echo ---------------------------------------------------------------------
pause
	) else (
rem  configuration personalisé
    if "%choix%"=="2" (
		set /p a=entrer le nom de votre reseau
		echo ce poste est :
		echo 1: serveur
		echo 2: client
		set /p c=votre choix: 
		rem  serveur
		if "%c%"== "1" (
			cls 
			color 6
			echo ******************* Mode Serveur ***********************
			echo entrer l'identifiant numerique du poste
			echo le numero que vous entrer represente la derniere plage d'adresse ip 
			echo de ce poste
			echo Donc veuiller  entrez un nombre compris entre 1 et 255 
			set /p b=identifiant : 
			echo ---------------------------------------------------------------------
			echo ...
			netsh interface ipv4 set address %a% static 192.168.1.%b% 255.255.255.0 192.168.1.1 1
			:ii1
			set /p d=voulez vous partager vos fichiers O/N
			if "%d%"=="o" (
				net share partage="c:"
			) else (
				if "%d%"=="n" (
					echo bien continuer
				) else (
					echo valeur incorrect 
					goto ii1
					)
				)	
				:ii2
			set /p f=vouler vous verifier vos modification O/N
			if "%f%"=="o" (
				echo 
				ipconfig /all
			) else (
				if "%f%"=="n" (
					echo bien continuer
				) else (
					echo valeur incorrect 
					goto ii2
					)
					)
				:ii3
				set /p g=vouler vous partager vos fichiers 0/N
				if "%g%"=="o" (
					net share partage="c:"
				) else (
					if "%g%"=="n" (
					echo bien continuer
				) else (
					echo valeur incorrect 
					goto ii3
					)
					)
					cls
							echo **************** configuration terminer ***************
							echo veuillez essayer
							pause
			) else (
				rem client	
				if "%c%"=="2" (
					net share partage="c:"
					cls
					color 9
					echo ****************** Mode Client *************************
					echo entrer l'identifiant numerique du poste
					echo le numero que vous entrer represente la derniere plage d'adresse ip 
					echo de ce poste
					echo Donc veuiller  entrez un nombre compris entre 1 et 255
					set /p b=identifiant :
					echo ---------------------------------------------------------------------
					echo ...
					netsh interface ipv4 set address %a% static 192.168.1.%b% 255.255.255.0 192.168.1.1 1
					:ii1
					set /p f=vouler vous verifier vos modification O/N
					if "%f%"=="o" (
						echo 
						ipconfig /all
					) else (
						if "%f%"=="n" (
							echo bien continuer
						) else (
							echo valeur incorrect 
							goto ii2
							)
						)
					:ii3
					set /p g=vouler vous partager vos fichiers 0/N
						if "%g%"=="o" (
							net share partage="c:"
						) else (
							if "%g%"=="n" (
							echo bien continuer
						) else (
							echo valeur incorrect 
							goto ii3
							)
							)
							cls
							echo **************** configuration terminer ***************
							echo veuillez essayer
							pause
				) else (
					echo valeur incorrecte
					pause
					goto i1
					)
					)
		 ) else (
				echo valeur incorrecte
				pause
				goto i1
				)
				)
				rem fin
echo  *-------------------------------*
echo * nous attendons vos commentaires *
echo  *-------------------------------*
echo http://www.enixmulti.blogspot.com
echo http://www.facebook.com/enixhack
echo *********************** By Master Enix ************************
pause > nul



 