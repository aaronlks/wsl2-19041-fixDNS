sudo chmod 666 /etc/resolv.conf
echo "nameserver 208.67.222.222" >> /etc/resolv.conf
echo "nameserver 208.67.220.220" >> /etc/resolv.conf
sudo chmod 755 /etc/resolv.conf

sudo touch /etc/wsl.conf
sudo chmod 666 /etc/wsl.conf
echo "[network]" >> /etc/wsl.conf
echo "generateResolvConf = false" >> /etc/wsl.conf
sudo chmod 755 /etc/wsl.conf