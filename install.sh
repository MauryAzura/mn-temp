#!/bin/bash

# Leer el archivo /etc/os-release
. /etc/os-release

# Obtener el ID de la distribución
os=$ID

# Comprobar si es Fedora
if [ "$os" = "fedora" ]; then
    sudo dnf install sensors -y 
fi
if [ "$os" = "arch" ]; then
    yes | sudo pacman -S lm_sensors

fi
