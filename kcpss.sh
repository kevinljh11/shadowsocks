killall server_linux_amd64
killall ssserver
killall python
./server_linux_amd64 -t "0.0.0.0:11003" -l ":11004" -key test -mtu 1350 -sndwnd 2048 -rcvwnd 2048 -crypt none -mode fast2 -dscp 0 -datashard 10 -parityshard 3 -nocomp> kcptun.log 2>&1 &
nohup /opt/jelastic-python27/bin/ssserver -c /opt/repo/ROOT/ss.json > /dev/null 2>&1 &
nohup python index.py > /dev/null 2>&1 &
