#!/bin/bash

# Remove Sublime Text package
sudo apt remove -y sublime-text

# Clean up any unused packages
sudo apt autoremove -y

echo "Sublime Text has been removed successfully."
