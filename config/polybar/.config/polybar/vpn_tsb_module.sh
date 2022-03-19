IP=$(ip a s | grep tun1 | grep inet | cut -d " " -f 6 | cut -d "/" -f1 | cut -d "." -f 1,2,3| sed 's/\x1B\[[0-9;]\{1,\}[A-Za-z]//g'); 
if [[ "${IP}" ==  "10.243.2" ]]; 
  then 
	echo "VPN: tsb"; 
	exit 0; 
  else 
	echo "VPN:tsb KO"; 
	exit 1; 
fi
