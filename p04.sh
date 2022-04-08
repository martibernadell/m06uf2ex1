#!/bin/bash
#Martí Bernadell Navarro

if [ $EUID -ne 0 ]
then
	echo "Aquest script s'ha d'executar amb l'ordre sudo"
	exit 1
	
fi

function Inici {
	clear
	echo -n "Escriu el nom d'un fitxer del directori /etc:"
	echo -n 
	read Fitxer
	
	cd /etc
	if [[ ! -e "$Fitxer" ]]
	then
		echo "El Fitxer $Fitxer no existeix. Tancant programa."
		exit 2
		
	else
		cp "$Fitxer" "$Fitxer".orig
		gzip -9 "$Fitxer".orig
		wc -c "$Fitxer".orig.gz
	fi
	return 0
}





	cont=0
	while [[ $cont == 0 ]]
	do
	
		Inici
		echo ""
		echo -n "Vols continuar? "
		read cont
	done


exit 15


			
