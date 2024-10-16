#!/bin/bash
sudo fdisk /dev/sdc << EOF

n
p
1

+2.5G

n
p
2

+2.5G

n
p
3

+2.5G

n
e
4

+2.5G

w
EOF

#lista de part. del disco
sudo fdisk -l /dev/sdc

#se crean ext3  y formateo
sudo mkfs.ext3 /dev/sdc1 && sudo mkfs.ext3 /dev/sdc2 && sudo mkfs.ext3 /dev/sdc3 && sudo mkfs.ext3 /dev/sdc5
sudo lsblk -f

#monto el disoc
sudo mkdir -p /mnt/{sdc1,sdc2,sdc3,sdc5}
sudo mount /dev/sdc1 /mnt/sdc1 && sudo mount /dev/sdc2 /mnt/sdc2 && sudo mount /dev/sdc3 /mnt/sdc3 && sudo mount /dev/sdc5 /mnt/sdc5
