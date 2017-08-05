./server_linux_amd64 -t "0.0.0.0:11003" -l ":11004" -key test -mtu 1350 -sndwnd 2048 -rcvwnd 2048 -crypt none -mode fast2 -dscp 0 -datashard 10 -parityshard 3 -nocomp> kcptun.log 2>&1 &
