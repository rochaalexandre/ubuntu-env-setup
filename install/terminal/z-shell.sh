# Install new shell
echo "Install zsh"
apt install zsh -y
chsh -s $(which zsh) ${USER}

echo "Install Zap"
curl -fsSL https://raw.githubusercontent.com/zap-zsh/zap/master/install.zsh -o install-zap.sh
chown $USER:$USER install-zap.sh
su -c 'bash install-zap.sh --keep --branch release-v1' $USER
rm install-zap.sh
