apt update
apt upgrade -y
apt install transmission-daemon transmission-cli -y
systemctl stop transmission-daemon
cp -pr /etc/transmission-daemon/settings.json /etc/transmission-daemon/settings.json.backup.$(date +%d%b%Y-%H%M%S)
sed -i 's/"rpc-authentication-required": true,/"rpc-authentication-required": false,/g' /etc/transmission-daemon/settings.json
systemctl start transmission-daemon

