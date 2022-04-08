#!/bin/bash
#Martí Bernadell Navarro

clear #nateja


	if ! [ $(id -u) = 0 ];
	then
	echo "Aquest script s'ha d'executar amb l'ordre sudo"
		exit 1
		
	else
	wget http://www.collados.org/asix2/m06/uf2/alumnes.ods #baixa els fitxers
	
	
	if (( $? != 0 ))
	then
		echo "No funciona"
		exit 3
		
		else
		libreoffice --headless --convert-to csv alumnes.ods
		if (( $? != 0 ))
			then
			echo "No funciona"
				exit 4
				
		else
			rm -r alumnes.ods
			cat alumnes.csv | cut -d "," -f 2 > alumnes2.csv
			rm alumnes.csv
			mv alumnes2.csv alumnes.csv
		while read line
		do
			PASSWORD=$(echo $RANDOM$(date +%N%s) | md5sum | cut -c 2-11) #contraseña random
			echo "$line:$PASSWORD" >> contrasenyes_dels alumnes.txt
			echo "__________" >> contrasenyes_dels alumnes.txt


		done < alumnes.csv
		if (( $? != 0 ))
			then
				echo "S'han trobat problemes per crear usuaris"
				exit 5
				
			else
				exit 0
				
				fi
				fi	
				fi
				fi
