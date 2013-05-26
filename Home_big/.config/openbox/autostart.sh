    #! /bin/bash

    #gnome-settings-daemon &
	setxkbmap fr &
    	/usr/bin/xscreensaver -no-splash &

	xrandr --newmode "1360x768"   84.75  1360 1432 1568 1776  768 771 781 798 -hsync +vsync &
	sleep 1s && xrandr --addmode VGA-0 1360x768 &
	sleep 2s && xrandr -s 1360x768 &
   
    # Restauration du dernier wallpaper choisi
	sleep 3 && nitrogen --restore &

    # Lancement de conky
    # Penser a ajouter une marge de 30 pixels via obconf
    # si on souhaite que conky soit visible en permanence
 	#sleep 3s && conky -c ~/.config/openbox/conkyrc-one-line & 
	sh ~/.conky/startconky.sh &


    # Demarrage de la barre de taches Tint
	sleep 3s && tint2 &
	#sleep 5s && wbar  --bpress --above-desk --vbar --pos left --grow --isize 50 --idist 5 --nanim 4 --falfa 45 &

    # Effets de transparence et ombre
    xcompmgr -c & 

    # Launch network manager applet
    #(sleep 4s && nm-applet) &

    #dropbox start &
    #ubuntuone-client-applet &

