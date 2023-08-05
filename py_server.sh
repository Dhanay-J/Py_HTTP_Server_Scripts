location=$(zenity --file-selection --directory)
ip_res=$(ip -4 addr | grep -oP '(?<=inet\s)\d+(\.\d+){3}' | cut -c 1-)
IP=`zenity --list --title="Choose the IP to Host the HTTP server [IP:80]" --column="IP" $ip_res`
cd $location
python3 -m http.server -b $IP 80
