# Install new shell
echo "Install zsh"
nala install zsh -y
chsh -s $(which zsh) ${USER}
