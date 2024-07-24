#!/bin/bash

# Remove Discord package
sudo apt remove -y discord

# Clean up any unused packages
sudo apt autoremove -y

echo "Discord has been removed successfully."
