# using outline on shadowsocks cli client

## install

```bash
sudo apt install shadowsocks-libev
# stop the default config
sudo systemctl stop shadowsocks-libev
sudo systemctl disable shadowsocks-libev
```

## create config
use base64 decoder to get server password.  
result will be like this `chacha20-ietf-poly1305:thepassword`

```bash
sudo cp /etc/shadowsocks-libev/config.json /etc/shadowsocks-libev/location-of-your-server.json

# use this to check for a free port
# best ports: 1080+n
sudo lsof -i:1084

sudo nano /etc/shadowsocks-libev/location-of-your-server.json

# add this line
"local_address":"127.0.0.1",
# change 'server' and 'server_port' and 'password'
# change 'local-port' to a free port
```

## start

```bash
# start it
sudo systemctl start shadowsocks-libev-local@location-of-your-server.service
# enable auto-start (one time use)
sudo systemctl enable shadowsocks-libev-local@location-of-your-server.service
# status
systemctl status shadowsocks-libev-local@location-of-your-server.service
```
