#!/bin/bash

#primero creo los grupos y luego creo los usuarios
#siempre uso sudo por un tema de permisos

#grupos sec
sudo groupadd grupoprogramadores
sudo groupadd grupotester
sudo groupadd grupoanalistas
sudo groupadd grupodisenadores

#creacion para nuevos usuario
sudo useradd programadores
sudo useradd tester
sudo useradd analistas
sudo useradd disenadores

#asigno a los usuarios a los grupos secundarios
#usermod para agregarlo al grupo
#-G hace que se remueva de cualquier otro lado y solo se
#lo agregue al grupo especificado
#-a es (append), y por eso se usa el -aG
sudo usermod -aG grupoprogramadores programadores
sudo usermod -aG grupotester tester
sudo usermod -aG grupoanalistas analistas
sudo usermod -aG grupodisenadores disenadores
sudo usermod -aG grupoprogramadores vagrant
sudo usermod -aG grupotester vagrant
sudo usermod -aG grupoanalistas vagrant
sudo usermod -aG grupodisenadores vagrant

#le agrego los permisos a los usuarios
#uso -R para que sea  recursivo y le de los mismos permisos
#dentro de los directorios de cada uno

#asigno el usuario dueño de cada grupo con chown(usuario_dueño:grupo)
sudo chown -R programadores:grupoprogramadores Examenes-UTN/alumno_1
sudo chown -R tester:grupotester Examenes-UTN/alumno_2
sudo chown -R analistas:grupoanalistas Examenes-UTN/alumno_3
sudo chown -R disenadores:grupodisenadores Examenes-UTN/profesores

#cambio los permisos de los directorios
#(uso -R para que sea recursivo y afecte el contenido de adentro)
#depende de la consigna le doy un valor  (ej:750 o 760) para que cumpla lo especificado
#primer caracter sobre el dueño, el segundo el grupo y el tercero el resto de usuarios
#7 leer, escribir y ejecutar
#6 leer y escribir, no ejecutar
#5 leer y ejecutar, no escribir
#0 o --- = no tiene permisos
sudo chmod -R 750 Examenes-UTN/alumno_1
sudo chmod -R 760 Examenes-UTN/alumno_2
sudo chmod -R 700 Examenes-UTN/alumno_3
sudo chmod -R 775 Examenes-UTN/profesores

#PARA LA CONTRASEÑA
echo "la contraseña es igual al nombre del usuario"
