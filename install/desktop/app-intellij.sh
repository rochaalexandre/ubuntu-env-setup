# Define IntelliJ IDEA download URL
IDEA_URL="https://download.jetbrains.com/product?code=IU&latest&distribution=linux"
mkdir -p ~/.local
cd ~/.local
wget -O ideaIU-latest.tar.gz $IDEA_URL
tar -xzf ideaIU-latest.tar.gz --transform='s/^idea-IU.*/idea-IU/'
mkdir -p ~/.local/bin
ln -sf ~/.local/idea-IU/bin/idea.sh ~/.local/bin/idea
rm ideaIU-latest.tar.gz
echo "IntelliJ IDEA has been installed successfully. You can run it using the command 'idea'."
cd -
