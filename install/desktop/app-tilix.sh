# Install tilix
sudo apt install tilix -y

#Download Tilix theme
wget https://github.com/dracula/tilix/archive/master.zip
unzip -o master.zip -d .config/tilix/schemes/
mv tilix-master/Dracula.json .config/tilix/schemes/
rm -r .config/tilix/schemes/tilix-master/

#Removing zip file
rm master.zip
