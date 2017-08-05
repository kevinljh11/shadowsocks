wget https://github.com/shadowsocks/shadowsocks/archive/master.zip
wget https://github.com/kevinljh11/shadowsocks/raw/rm/server_linux_amd64
wget https://github.com/kevinljh11/shadowsocks/raw/rm/kcpstart.sh
wget https://github.com/kevinljh11/shadowsocks/raw/rm/ss.sh
unzip master.zip
chmod +x server_linux_amd64
chmod +x kcpstart.sh
chmod +x ss.sh
bash kcpstart.sh
bash ss.sh
