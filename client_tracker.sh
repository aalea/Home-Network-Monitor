a=`sudo arp-scan --retry=8 --ignoredups -I NETWORKADAPTER --localnet | wc -l` # replace NETWORKADAPTER with wifi interface connected to the network i.e. eth0, wlan0
b=`cat arp_scan.log`
if [ $a -ge $b ]; then
        c=`expr $a - $b`
        echo "$c new clients joined your home network" | sendmail EMAILADDRESS # replace EMAILADDRESS with the email address you'd like these reports to send to
fi
./count_clients.sh
