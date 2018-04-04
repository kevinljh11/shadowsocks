nohup python ssr/shadowsocks/server.py -p 8339 -k Ssr123456 -m aes-256-cfb -O auth_aes128_sha1 -o tls1.2_ticket_auth_compatible -G 32 -g www.bing.com > /dev/null 2>&1 &
