# Install new shell
echo "Install zsh"
apt install zsh -y
chsh -s $(which zsh) ${USER}
