
#echo -n "Server Url:"
#read -e url
##echo -n "Port:"
##read -es port
#proxy="http://$url:80"

#echo -e $proxy

#export lllllkkkk=$proxy
if [ $# -lt 1 ]; then
    echo "Usage: . ./proxy.sh on|off|show xxx.xxx.com:1234"
fi

if [ $1 = on ]; then

    proxy="http://proxy.zte.com.cn:80"

    if [ $2 ]; then
        #echo "Using proxy: http://$2:80"
        #proxy="http://$2:80"
        proxy="http://$2"
        if [ $2 = "gae" ]; then
            proxy="http://127.0.0.1:8087"
        fi
    fi

    echo "Using proxy: $proxy"
    export http_proxy=$proxy
    export https_proxy=$proxy
    export ftp_proxy=$proxy
    echo -e "Proxy environment variable set."

    if [ $2 = "gae" ]; then
        echo -e "Starting proxy...."
        cd /mnt/sharedisk/tools/phus-goagent-f2ada31/local/
        python proxy.py 2>/dev/null 1>/dev/null &
        cd -
    fi

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


