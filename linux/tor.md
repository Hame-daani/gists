# install tor on ubuntu


## installation

```bash
# install
sudo apt install tor
# for obfs4
sudo apt install obfs4proxy
# for obfs3
sudo apt install obfsproxy
# wrapper for terminal usage
sudo apt install torsocks # usage: $ torsock folan arg1 arg2


# logs
journalctl -exft Tor

# reset
sudo systemctl restart tor@default.service
```


## bridges

send `get transport obfs4` or `get transport obfs3` to `bridges@torproject.org`

```bash
sudo nano /etc/tor/torrc

# add this to end
# for obfs4
UseBridges 1
ClientTransportPlugin obfs4 exec /usr/bin/obfs4proxy
Bridge obfs4 IP:PORT HASH-OF-YOUR-OBFS4-BRIDGE

# for obfs3
UseBridges 1
ClientTransportPlugin obfs3 exec /usr/bin/obfsproxy --managed
Bridge obfs3 IP:PORT HASH-OF-YOUR-OBFS3-BRIDGE
```


## exit node

```bash
sudo nano /etc/tor/torrc

# add to end
ExitNodes {us},{gb}
```


## chrome

use `SwitchyOmega` on `127.0.0.1:9050` socks5


## http

not necessery!

```bash
sudo apt install privoxy
nano /etc/privoxy/config

# uncomment this line
forward-socks5t / 127.0.0.1:9050 .

sudo systemctl enable privoxy.service
sudo systemctl start privoxy.service
```
