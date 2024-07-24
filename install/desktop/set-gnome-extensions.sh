sudo apt install -y gnome-shell-extension-manager pipx
pipx install gnome-extensions-cli --system-site-packages

# Turn off default Ubuntu extensions
gnome-extensions disable tiling-assistant@ubuntu.com
gnome-extensions disable ubuntu-dock@ubuntu.com
gnome-extensions disable ding@rastersoft.com
#gnome-extensions disable ubuntu-appindicators@ubuntu.com

# Pause to assure user is ready to accept confirmations
gum confirm "To install Gnome extensions, you need to accept some confirmations. Are you ready?"

# Install new extensions
gext install tactile@lundal.io
gext install Vitals@CoreCoding.com
gext install spotify-controller@koolskateguy89
gext install dash-to-dock@micxgx.gmail.com
gext install solaar-extension@sidevesh
gext install notification-position@drugo.dev
gext install Hide_Activities@shay.shayel.org

## Compile gsettings schemas in order to be able to set theme
sudo cp ~/.local/share/gnome-shell/extensions/tactile@lundal.io/schemas/org.gnome.shell.extensions.tactile.gschema.xml /usr/share/glib-2.0/schemas/
sudo cp ~/.local/share/gnome-shell/extensions/spotify-controller@koolskateguy89/schemas/org.gnome.shell.extensions.spotify-controller.gschema.xml /usr/share/glib-2.0/schemas/
sudo cp ~/.local/share/gnome-shell/extensions/Vitals\@CoreCoding.com/schemas/org.gnome.shell.extensions.vitals.gschema.xml /usr/share/glib-2.0/schemas/
sudo cp ~/.local/share/gnome-shell/extensions/dash-to-dock@micxgx.gmail.com/schemas/org.gnome.shell.extensions.dash-to-dock.gschema.xml /usr/share/glib-2.0/schemas/

sudo glib-compile-schemas /usr/share/glib-2.0/schemas/

# Configure Tactile
gsettings set org.gnome.shell.extensions.tactile col-0 1
gsettings set org.gnome.shell.extensions.tactile col-1 2
gsettings set org.gnome.shell.extensions.tactile col-2 1
gsettings set org.gnome.shell.extensions.tactile col-3 0
gsettings set org.gnome.shell.extensions.tactile row-0 1
gsettings set org.gnome.shell.extensions.tactile row-1 1
gsettings set org.gnome.shell.extensions.tactile gap-size 32


## Configure Vitals
gsettings set org.gnome.shell.extensions.vitals hide-icons false
gsettings set org.gnome.shell.extensions.vitals hot-sensors "['_memory_usage_', '__network-rx_max__', '_processor_usage_', '_network_wifi_link quality_']"
gsettings set org.gnome.shell.extensions.vitals icon-style 0
gsettings set org.gnome.shell.extensions.vitals position-in-panel 3
gsettings set org.gnome.shell.extensions.vitals network-speed-format 1

