#!/bin/bash
#RASOLONDRAIBE Stevy Bryan 

#rstevybryan@gmail.com
#Description:

Date(){
	Date=`date`
	Date=${Date:0:-13}
	echo "Bonjour Aujourd'hui c'est: $Date, je suis le script ${0:2:-3}"
}

Compte_utilisateur(){
	sudo  useradd $1 && sudo passwd 
	sudo  useradd $2 && sudo passwd
	ls /home
}

Noms_jours(){	
	echo -e "Nom du script : ${0:2:-3}\n"
	echo -e "Nombre des arguments : $#\n"
	echo -e "La liste des arguments : $*\n"
	#echo "Le PID du script est : $(pgrep Exo#1.sh)"
	echo "Le PID du script est : $$"	
}
Date
Noms_jours $@
