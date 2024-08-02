#!/bin/bash

ruta=$(pwd)

	#Damos permisos de ejecución 
	sudo chmod +x $ruta/Themes/abr4hack/.p10k.zsh
	sudo chmod +x $ruta/Themes/abr4hack/.p10k.zsh-root
	sudo chmod +x $ruta/Themes/abr4hack/Config/bspwm/bspwmrc 
    sudo chmod +x $ruta/Themes/abr4hack/Config/bspwm/scripts/bspwm_resize 
    sudo chmod +x $ruta/Themes/abr4hack/Config/bin/ethernet_status.sh
    sudo chmod +x $ruta/Themes/abr4hack/Config/bin/htb_status.sh 
    sudo chmod +x $ruta/Themes/abr4hack/Config/bin/htb_target.sh 
    sudo chmod +x $ruta/Themes/abr4hack/Config/polybar/launch.sh 
    sudo chmod +x /usr/local/bin/whichSystem.py 
    sudo chmod +x /usr/local/bin/screenshot 
	#Limpiamos viejos dot files
	sudo rm -rf	~/.p10k.zsh
	sudo rm -rf	/root/.p10k.zsh
	sudo rm -rf ~/.config/bspwm
	sudo rm -rf ~/.config/bin
	sudo rm -rf ~/.config/picom
	sudo rm -rf ~/.config/polybar
	sudo rm -rf ~/.config/rofi
	sudo rm -rf ~/.config/Wallpaper
	#Movemos los dot files
    sudo cp -v $ruta/Themes/abr4hack/.p10k.zsh ~/.p10k.zsh
    sudo cp -v $ruta/Themes/abr4hack/.p10k.zsh-root /root/.p10k.zsh
    echo "p10k setup"
	sudo cp -rv $ruta/Themes/abr4hack/Config/* ~/.config/
	echo "config setup"
    rofi-theme-selector
    echo "Abr4hack theme instalado"
    kill -9 -1
