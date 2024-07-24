#!/bin/bash

# Remove IntelliJ IDEA directory
rm -rf ~/.local/idea-IU

# Remove the symbolic link
rm -f ~/.local/bin/idea

echo "IntelliJ IDEA has been removed successfully."
