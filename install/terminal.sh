#!/bin/bash

# Log file
LOGFILE="/tmp/installer_run.log"

# Needed for all installers
echo "Updating and upgrading system..." | tee -a "$LOGFILE"
sudo apt update -y | tee -a "$LOGFILE"
sudo apt upgrade -y | tee -a "$LOGFILE"
sudo apt install -y curl git unzip | tee -a "$LOGFILE"

# Run terminal installers sequentially
for installer in ~/.local/share/omakub/install/terminal/*.sh; do
    echo "Running installer: $installer" | tee -a "$LOGFILE"
    source "$installer" | tee -a "$LOGFILE"
    if [ $? -ne 0 ]; then
        echo "Installer $installer failed, exiting." | tee -a "$LOGFILE"
        exit 1
    fi
    echo "Completed installer: $installer" | tee -a "$LOGFILE"
done

echo "All installers have been run." | tee -a "$LOGFILE"
