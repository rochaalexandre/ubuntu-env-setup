cat <<EOF >~/.local/share/applications/Docker.desktop
[Desktop Entry]
Name=IntelliJ IDEA Ultimate
Exec="$HOME/.local/intellij/bin/idea.sh" %u
Version=1.0
Type=Application
Categories=Development;IDE;
Terminal=false
Icon="$HOME/.local/intellij/bin/idea.svg"
Comment=The Leading Java and Kotlin IDE
StartupWMClass=jetbrains-idea
StartupNotify=true
EOF