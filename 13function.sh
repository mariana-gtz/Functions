#!/bin/bash
echo "Proporcione una contrasena:"; read password

word=$(sed -e s/[Aa0-Zz9]//g <<< $password)

if [[ $word == "" ]]
then
	echo "La contrasena es valida"
else
	echo "La contrasena no es valida"
fi
