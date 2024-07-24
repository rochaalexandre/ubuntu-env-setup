echo "Downloading IntelliJ IDEA..."
wget -O /tmp/ideaIU-latest.tar.gz "https://download.jetbrains.com/product?code=IU&latest&distribution=linux"


TARGET_DIR="$HOME/.local/intellij"
mkdir -p "$TARGET_DIR"

# Extract the tarball to the target directory
echo "Extracting IntelliJ IDEA..."
tar -xzf /tmp/ideaIU-latest.tar.gz -C "$TARGET_DIR" --strip-components=1

# Clean up the tarball
rm /tmp/ideaIU-latest.tar.gz



ln -sf "$TARGET_DIR/bin/idea.sh" ~/.local/bin/idea
rm ideaIU-latest.tar.gz
echo "IntelliJ IDEA has been installed successfully to $TARGET_DIR. You can run it using the command 'idea'."
cd -
