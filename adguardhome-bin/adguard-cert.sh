#!/usr/bin/env bash
if [ "$UID" -ne "0" ]; then
  echo -e "\n\e[0;33m[${0##*/}]\e[1;31m Error: \e[0;33mYOU MUST BE ROOT TO USE THIS!"
  echo -e "\e[0;35mTip: \e[0;33mPrecede your command with 'sudo'\e[0m\n"
  exit 1
fi
DOMAIN=${SERVER_NAME}
cp -fv /etc/letsencrypt/live/$DOMAIN/fullchain.pem /var/lib/adguardhome/data/fullchain.pem
cp -fv /etc/letsencrypt/live/$DOMAIN/privkey.pem /var/lib/adguardhome/data/privkey.pem

chown -c adguardhome:adguardhome /var/lib/adguardhome/data/{privkey.pem,fullchain.pem}
chmod -c 604 /var/lib/adguardhome/data/{privkey.pem,fullchain.pem}
systemctl restart AdGuardHome.service
sleep 5s
exit 0
