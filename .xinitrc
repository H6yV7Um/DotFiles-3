export XMODIFIERS="@im=ibus"
export GTK_IM_MODULE="ibus"
export QT_IM_MODULE="xim"

ibus-daemon -d -x
#xresources
xrdb ~/.Xresources
#exec awesome
#!/bin/sh
#
## ~/.xinitrc
#
#export XMODIFIERS=@im=fcitx
#export GTK_IM_MODULE=fcitx # 或者是xim，取决于你是否编译了对应的输入法模块
#export QT_IM_MODULE=fcitx # 或者是xim，取决于你是否编译了对应的输入法模块
# Executed by startx (run your window manager from here)

#proxy="http://proxysh.zte.com.cn:80"
#proxy="http://proxynj.zte.com.cn:80"
#proxy="http://proxy.zte.com.cn:80"

#export http_proxy=$proxy
#export https_proxy=$proxy
#export ftp_proxy=$proxy

#if [ -d /etc/X11/xinit/xinitrc.d ]; then
#  for f in /etc/X11/xinit/xinitrc.d/*; do
#    [ -x "$f" ] && . "$f"
#  done
#  unset f
#fi

# exec gnome-session
# exec startkde
# exec startxfce4
# exec openbox
exec awesome
# ...or the Window Manager of your choice
