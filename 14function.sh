#!/bin/bash
 
factorial() { 
   if (( $1 <= 1 )); then
     echo 1
   else
     echo $(( $1 * $(factorial $(( $1 - 1 ))) ))
   fi
}

echo "Proporcione un número <<CTRL+C para terminar>>:"; read num

factorial $num
