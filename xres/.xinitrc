#!/bin/sh

userresources=$HOME/.Xresources
usermodmap=$HOME/.Xmodmap
sysresources=/etc/X11/xinit/.Xresources
sysmodmap=/etc/X11/xinit/.Xmodmap

# merge in defaults and keymaps

if [ -f $sysresources ]; then







    xrdb -merge $sysresources

fi

if [ -f $sysmodmap ]; then
    xmodmap $sysmodmap
fi

if [ -f "$userresources" ]; then







    xrdb -merge "$userresources"

fi

if [ -f "$usermodmap" ]; then
    xmodmap "$usermodmap"
fi

# start some nice programs

if [ -d /etc/X11/xinit/xinitrc.d ] ; then
 for f in /etc/X11/xinit/xinitrc.d/?*.sh ; do
  [ -x "$f" ] && . "$f"
 done
 unset f
fi
#turn off beep
xset -b &

#set wallpaper
${HOME}/scripts/gitscripts/theming/wpset &

#start dunst
dunst &

#start compton for fades
picom -f &

#start mopidy
mopidy &

#add custom scripts to path
export PATH=$PATH:~/scripts/usable &

#start redshift
redshift -l 29.75:-95.34 &

#set backlight to 50
xbacklight -set 50 &

#start unclutter
unclutter &

#Start Syncthing
syncthing --no-browser &

#start bspwm
exec bspwm
