# Install tilix
sudo apt install tilix -y
#Download Tilix theme
wget https://github.com/dracula/tilix/archive/master.zip
mkdir -p "$HOME/.config/tilix/schemes/"
unzip -o master.zip -d "$HOME/.config/tilix/schemes/"
mv $HOME/.config/tilix/schemes/tilix-master/Dracula.json "$HOME/.config/tilix/schemes/"
rm -r "$HOME/.config/tilix/schemes/"

#Removing zip file
rm master.zip
