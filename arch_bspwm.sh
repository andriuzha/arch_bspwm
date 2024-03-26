#!/bin/bash

clear

echo "Este Script realiza las siguientes acciones:

- Actualizar sistema 
- Instalar BSPWM y componentes necesarios
- Instalar ZSH
- Instalar aplicaciones complementarias
	- neofetch 
	- chromium 
	- mpv 
	- ranger 
	- zathura

Se recomienda cerrar todas las aplicaciones antes de continuar.

Para cancelar presione ctrl+C 
Para continuar presione ENTER

@andriuzha"

read OK

clear

echo "Actualizando sistema#"
sudo pacman -Syyuu --noconfirm &&
clear &&
sleep 2s

echo "Sistema actualizado"
echo "Habilitando ZSH"
sudo pacman -S zsh cargo --noconfirm &&
chsh -s $(which zsh) &&
sh -c "$(wget https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)" &&
cd &&
yay -S zsh-autosuggestions zsh-completions zsh-syntax-highlighting zsh-theme-powerlevel10k --noconfirm &&
cp -rf /tmp/bspwm/home/.zshrc $HOME
cp -rf /tmp/bspwm/home/.p10k.zsh $HOME
clear &&
sleep 2s

echo "Sistema actualizado"
echo "ZSH habilitado"
echo "Instalar apps complementarias"
sudo pacman -S kitty zsh neofetch mousepad chromium mpv cmatrix ranger xorg-xbacklight gpick light maim bmon nautilus htop feh lxappearance nitrogen geany dmenu networkmanager xfconf xsettingsd xfce4-power-manager zenity zathura zathura-pdf-mupdf git --noconfirm &&
yay -S i3lock-color ttf-ms-fonts cava nm-tray networkmanager-demnu-git --noconfirm &&
sudo systemctl disable mpd &&
clear &&
sleep 2s
			
echo "Sistema actualizado"
echo "ZSH habilitado"
echo "Apps complementarias instaladas con exito"
echo "Proceso finalizado"
echo "Para salir presione Enter"
read
exit
