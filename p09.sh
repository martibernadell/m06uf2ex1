#!/bin/bash
#Martí Bernadell Navarro


clear


while [[ $opc != "s" ]] && [[ $opc != "S" ]]
do
	clear

	echo "Dona'm un grup que has de borrar, ves en compte, ja que el grup es borrara: "
	read group > /dev/null 2>&1
	
	echo "Confirma la teva resposta? (s/n):"
	read resposta

	groupdel -f $group
	
	exit 2
	
	
done


