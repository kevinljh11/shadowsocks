wget https://github.com/shadowsocks/shadowsocks/archive/master.zip
wget https://github.com/kevinljh11/shadowsocks/raw/rm/server_linux_amd64
wget https://github.com/kevinljh11/shadowsocks/raw/rm/kcpstart.sh
wget https://github.com/kevinljh11/shadowsocks/raw/rm/ss.sh
wget https://github.com/kevinljh11/shadowsocks/raw/rm/kcpss.sh
wget https://github.com/kevinljh11/shadowsocks/raw/rm/ss.json
wget https://github.com/kevinljh11/shadowsocks/blob/rm/index.py
#apt-get update
#apt-get install -y zip unzip
unzip master.zip
chmod +x server_linux_amd64
chmod +x kcpstart.sh
chmod +x ss.sh
chmod +x kcpss.sh
#python /opt/repo/ROOT/shadowsocks-master/setup.py install
bash kcpss.sh
