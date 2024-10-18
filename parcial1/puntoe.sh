#!/bin/bash
#busco con grep MemTotal en la direccion /proc/meminfo , despues guardo la informacion en /Filtro_Basico.txt
sudo grep MemTotal /proc/meminfo > Filtro_Basico.txt

#busco Manufacturer para luego agregar con >> la info al txt
#agrego el mensaje de la consigna
echo "Chasis information" >> Filtro_Basico.txt
sudo dmidecode -t chassis | grep "Manufacturer" >> Filtro_Basico.txt
