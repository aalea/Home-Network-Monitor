a=`sudo arp-scan --retry=8 --ignoredups -I eth0 --localnet | wc -l`
a=`expr $a - 5`
echo $a > arp_scan.log
