#Install Zap plugin manager
curl -fsSL https://raw.githubusercontent.com/zap-zsh/zap/master/install.zsh -o install-zap.sh
chown $USER:$USER install-zap.sh
su -c 'zsh install-zap.sh --keep --branch release-v1' $USER
rm install-zap.sh
