#Creo los usuarios
sudo useradd -m programadores
sudo useradd -m tester
sudo useradd -m analistas
sudo useradd -m disenadores
#Creo los grupos
sudo addgroup grupoprogramadores
sudo addgroup grupotester
sudo addgroup grupoanalistas
sudo addgroup grupodisenadores
#asigno los grupos secundarios a los usuarios
sudo usermod -a -G grupoprogramadores programadores
sudo usermod -a -G grupotester tester
sudo usermod -a -G grupoanalistas analistas
sudo usermod -a -G grupodisenadores disenadores
#asigno dueños de los directorios y sus permisos
sudo chown -R programadores:programadores Examenes-UTN/alumno_1 && sudo chmod -R 750 Examenes-UTN/alumno_1
sudo chown -R tester:tester Examenes-UTN/alumno_2 && sudo chmod -R 760 Examenes-UTN/alumno_2
sudo chown -R analistas:analistas Examenes-UTN/alumno_3 && sudo chmod -R 700 Examenes-UTN/alumno_3
sudo chown -R disenadores:disenadores Examenes-UTN/profesores && sudo chmod -R 755 Examenes-UTN/profesores
