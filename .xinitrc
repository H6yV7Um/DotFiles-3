#!/bin/sh
#export XMODIFIERS="@im=ibus"
#export GTK_IM_MODULE="ibus"
#export QT_IM_MODULE="xim"

export LANG="en_US.UTF-8"

xrdb ~/.Xresources
xmodmap ~/.Xmodmap

export GTK_IM_MODULE=fcitx
export QT_IM_MODULE=fcitx
export XMODIFIERS=@im=fcitx
eval `dbus-launch --sh-syntax --exit-with-session`

#xrandr --output LVDS1 --primary
#xrandr --output VGA1 --mode 1280x1024 --right-of LVDS1
#xrandr --output VGA1 --primary  --output HDMI1  --right-of VGA1  --mode 1680x1050
#xrandr --output HDMI1 --primary --mode 1680x1050 --output VGA1  --right-of HDMI1
#xrandr --output HDMI1 --primary --mode 1920x1200 --output VGA1 --mode 1920x1080 --right-of HDMI1
#xrandr --output LVDS1 --primary --mode 1366x768 --output VGA1 --auto --right-of LVDS1 
xrandr --screen 1 --output HDMI1 --mode 1680x1050

#xrandr --screen 0 --output HDMI1  --mode 1920x1200 --output VGA1 --mode 1680x1050 --right-of HDMI1
#xrandr --screen 1 --output VGA-2  --mode 1680x1050 --output DVI-I-1 --mode 1920x1080 --right-of VGA-2

#bumblebeed --daemon


#exec ck-launch-session dbus-launch --sh-syntax --exit-with-session awesome >> ~/.awesome_stdout 2>> ~/.awesome_stderr
#exec ck-launch-session awesome >> ~/.awesome_stdout 2>> ~/.awesome_stderr
#exec ck-launch-session dbus-launch --sh-syntax --exit-with-session awesome >> ~/.awesome_stdout 2>> ~/.awesome_stderr

python ~/work/bnac.py jinlei04 Leiking02161 &


#feh /mnt/share/mine/baby.jpg --bg-max
#exec subtle > ~/.subtle_stdout 2> ~/.subtle_stderr
#exec subtle &
#PID=$!
#sleep 2
#   VBoxClient-all 
#   terminator
#   urxvt -name irssi -e irssi
#   gvim
#   firefox-bin
#   fcitx
#   deadbeef 
#   smplayer2 
#   pidgin
#   wine '/home/jinleileiking/.wine/drive_c/Program\ Files/Tracker\ Software/PDF\ Viewer/PDFXCview.exe'
#wait $PID


exec awesome >> ~/.awesome_stdout 2> ~/.awesome_stderr
#
