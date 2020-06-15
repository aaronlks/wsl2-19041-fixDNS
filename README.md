
[2020-06-15]

This was created to document a mini fix for Windows Build 19041 WSL2 DNS issue, and also for the need to repeat these DNS settings for every new distro created inside WSL2 for now.

I have set these to OpenDNS/Cisco Umbrella, you can change accordingly.

fixdns.sh simply contains

```
sudo chmod 666 /etc/resolv.conf
echo "nameserver 208.67.222.222" >> /etc/resolv.conf
echo "nameserver 208.67.220.220" >> /etc/resolv.conf
sudo chmod 755 /etc/resolv.conf

sudo touch /etc/wsl.conf
sudo chmod 666 /etc/wsl.conf
echo "[network]" >> /etc/wsl.conf
echo "generateResolvConf = false" >> /etc/wsl.conf
sudo chmod 755 /etc/wsl.conf
```