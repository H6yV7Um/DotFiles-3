
#echo -n "Server Url:"
#read -e url
##echo -n "Port:"
##read -es port
#proxy="http://$url:80"

#echo -e $proxy

#export lllllkkkk=$proxy
if [ $# -lt 1 ]; then
    echo "Usage: . ./proxy.sh on|off|show"
fi

if [ $1 = on ]; then

    proxy="http://proxy.zte.com.cn:80"

    if [ $2 ]; then
        #echo "Using proxy: http://$2:80"
        proxy="http://$2:80"
    fi

    echo "Using proxy: $proxy"
    export http_proxy=$proxy
    export https_proxy=$proxy
    export ftp_proxy=$proxy
    echo -e "Proxy environment variable set."
elif [ $1 = off ]; then
    unset HTTP_PROXY
    unset http_proxy
    unset HTTPS_PROXY
    unset https_proxy
    unset FTP_PROXY
    unset ftp_proxy
    echo -e "Proxy environment variable unset."
elif [ $1 = show ]; then
    echo "http_proxy=$http_proxy"
    echo "https_proxy=$https_proxy"
    echo "ftp_proxy=$ftp_proxy"
else
    echo -e "Error."
fi


