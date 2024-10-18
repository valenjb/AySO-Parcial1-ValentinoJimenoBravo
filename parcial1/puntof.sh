#!/bin/bash

#uso $() para usar un comando dentro de otro comando (en este caso, la logica de la busqueda dentrod el echo)
echo "Mi IP Publica es: $(curl -s ifconfig.me)" > Filtro_Avanzado.txt
echo "Mi usuario es: $(whoami)" >> Filtro_Avanzado.txt

#para el hash, busca el hash para el usuario whoami
#luego recorta la respuesta para solamente contestar lo que pide la consigna
#con el | hacemos que la respuesta se modifique de la siguiente manera:
#cut -d delimita a partir del :
#-f dice que se quiere extraer el segundo campo de la respuesta(donde esta ek hash de la contraseña)
echo "El Hash de mi usuario es: $(sudo grep "$(whoami):" /etc/shadow | cut -d: -f2)" >> Filtro_Avanzado.txt
