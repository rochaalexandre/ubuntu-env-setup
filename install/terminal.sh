# Needed for all installers
sudo apt update -y
sudo apt upgrade -y
sudo apt install -y curl git unzip

# Run terminal installers
for installer in ~/.local/share/omakub/install/terminal/*.sh; do
    echo "##### Running installer: $installer"
    source "$installer"
done

echo "All installers have been run."