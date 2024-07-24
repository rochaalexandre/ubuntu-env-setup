cd /tmp
wget -O discord_latest.deb "https://discordapp.com/api/download?platform=linux&format=deb"
sudo apt install -y ./discord_latest.deb
rm discord_latest.deb
cd -
