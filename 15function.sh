#!/bin/bash
while [ true ]
do
  echo "Menu de administracion"
  echo "  1)Disco Duro"
  echo "  2)Archivos"
  echo "  3)Conexiones"
  echo "  4)Salir"
  echo "Seleccione una opcion"
  echo "*<<CTRL+C o 4 para terminar>>*"
  read opc
  echo
  case $opc in
     1)
	echo "Disco Duro:"
        du -sh
	echo
     ;;
     2)
	echo "Archivos viejos:"
        find /home/ -iname "*" -atime +365 -ls
	echo
     ;;
     3)
         echo "Servicios IPv4 e IPv6:"
         lsof -i | egrep "IPv4 | IPv6"
	 echo
     ;;
     4)
	echo "Adios"
        exit 0
     ;;
     *)
        echo "Opcion incorrecta"
     ;;
  esac
done
