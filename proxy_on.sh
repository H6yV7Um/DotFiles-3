
#echo -n "Server Url:"
#read -e url
##echo -n "Port:"
##read -es port
#proxy="http://$url:80"

#echo -e $proxy

#export lllllkkkk=$proxy

proxy="http://proxy.zte.com.cn:80"

export http_proxy=$proxy
export https_proxy=$proxy
export ftp_proxy=$proxy


echo -e "\nProxy environment variable set."
