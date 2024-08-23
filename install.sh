#!/bin/bash
if (($EUID !=0)); then
     echo Script must be run by root.
     exit
fi

echo "Installing requirements. "
apt-get install -y docker docker-compose curl qrencode
read -p "Enter your server's domain name: " dn
ip=$(curl http://ifconfig.me)
uuuid=$(cat /proc/sys/kernel/random/uuid)
random_hex=$(cat /dev/urandom | tr -dc 'a-f0-9' | head -c 8)
chmod +x xray
./xray x25519 > keys.txt
awk '{print $3}' keys.txt > keys
privkey=$(head -n1 keys)
pubkey=$(tail -n1 keys)

cp Caddyfile Caddifile.original
cp haproxy.cfg haproxy.cfg.original
cp config.json config.json.original

sed -i "s/domain_name/$dn/g" Caddyfile
sed -i "s/domain_name/$dn/g" haproxy.cfg
sed -i "s/uuuuid/$uuuid/g" config.json
sed -i "s/pprivkey/$privkey/g" config.json
sed -i "s/ssid/$random_hex/g" config.json


echo 'Files Caddyfile, haproxy.cfg and config.json is changed by your settings. Original files saved with .original postfix.'
sleep 5
docker-compose up -d
docker ps

link1='vless://'$uuuid'@'$ip':443?security=reality&sni=whatsapp.com&fp=chrome&pbk='$pubkey'&sid='$random_hex'&type=tcp&encryption=none#Reality'
link2='vless://'$uuuid'@'$dn':443?security=tls&fp=chrome&type=ws&path=/topsecretpath&encryption=none#WS'

echo "Reality: "
echo $link1
qrencode -t ANSIUTF8 $link1
echo ''
echo ''
echo ''

echo "Websocket: "
echo $link2
qrencode -t ANSIUTF8 $link2
echo ''
echo ''
echo ''

echo $link1 > links.txt
echo $link2 >> links.txt
echo 'Links saved in file links.txt'
