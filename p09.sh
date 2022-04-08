#!/bin/bash
  clear
echo "Dona'm el nom del grup:" 
read -r remove group
[ -n $deletegroup ] 


if [ $? -ne 0 ]
then
	if [[ ! -d /etc/$1 ]]
	then
		echo -n "De veritat el vols borrar?"
		read opc
	if [[ $opc != "s" ]] && [[ $opc != "S" ]]
	then
			echo $opc
			echo "No es borra el grup"
				exit 1
	
		
		else
                 echo "Borrant..."
						exit 2
		fi
