#!/bin/bash
#Martí Bernadell Navarro
clear

echo "Dona'm un subdirectori per fer una copia de seguretat"
echo
if (( $# == 1 ))
then
	if [[ ! -d /etc/$1 ]]
	then
		echo -n "El subdirectori no existeix. El vols crear? (s/n)?: "
		read opc
	if [[ $opc != "s" ]] && [[ $opc != "S" ]]
	then
			echo $opc
			echo "No es crea el directori"
			exit 1
			
			
	else
			mkdir /etc/$1
		fi
	fi
else
	echo "S'ha de passar un paràmetre. El paràmetre és una carpeta dins de /etc"
			exit 2
			
			
	fi
nom_backup=/etc/$1/resolv.conf.backup.
cp /etc/resolv.conf $nom_backup 
gzip $nom_backup
			exit 15
