#!/bin/sh
#export XMODIFIERS="@im=ibus"
#export GTK_IM_MODULE="ibus"
#export QT_IM_MODULE="xim"

xrdb ~/.Xresources

export XMODIFIERS=@im=fcitx
export GTK_IM_MODULE=fcitx # 或者是xim，取决于你是否编译了对应的输入法模块
export QT_IM_MODULE=fcitx # 或者是xim，取决于你是否编译了对应的输入法模块
eval `dbus-launch --sh-syntax --exit-with-session`

xrandr --output LVDS1 --primary
xrandr --output VGA1 --mode 1280x1024 --right-of LVDS1
 

exec awesome >> ~/.awesome_stdout 2>> ~/.awesome_stderr

