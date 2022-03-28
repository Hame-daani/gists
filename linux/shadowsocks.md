# using outline on shadowsocks cli client

## install

```bash
sudo apt install shadowsocks-libev
# stop the default config
sudo systemctl stop shadowsocks-libev
sudo systemctl disable shadowsocks-libev
```

## create config

```bash
sudo cp /etc/shadowsocks-libev/config.json /etc/shadowsocks-libev/location-of-your-server.json
sudo nano /etc/shadowsocks-libev/location-of-your-server.json

# add this line
"local_address":"127.0.0.1",
# change 'server' and 'server_port' and 'password'
```

## start

```bash
sudo systemctl start shadowsocks-libev-local@location-of-your-server.service
sudo systemctl enable shadowsocks-libev-local@location-of-your-server.service
systemctl status shadowsocks-libev-local@location-of-your-server.service
```
