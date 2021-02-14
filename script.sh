hostname=$HOSTNAME
ip=$(hostname -I | awk '{print $2}')
date=$(date '+%s')
ram=$(free -m | awk '{print $4}' | sed -n 2p)

echo "Hostname= $hostname, IP= $ip, Timestamp=$date, Memory RAM Free= $ram MB"
