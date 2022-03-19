IP=$(ip a s | grep tun0 | grep inet | cut -d " " -f 6 | cut -d "/" -f1 | cut -d "." -f 1,2| sed 's/\x1B\[[0-9;]\{1,\}[A-Za-z]//g'); 
if [[ "${IP}" ==  "172.29" ]]; 
  then 
	echo "VPN: sqs"; 
	exit 0; 
  else 
	echo "VPN:sqs KO"; 
	exit 1; 
fi
