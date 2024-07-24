#sudo apt install -y docker.io docker-buildx
#sudo usermod -aG docker ${USER}
#
## Limit log size to avoid running out of disk
#echo '{"log-driver":"json-file","log-opts":{"max-size":"10m","max-file":"5"}}' | sudo tee /etc/docker/daemon.json
#
#DOCKER_COMPOSE_VERSION="2.27.0"
#DOCKER_CONFIG=${DOCKER_CONFIG:-$HOME/.docker}
#mkdir -p $DOCKER_CONFIG/cli-plugins
#curl -sSL https://github.com/docker/compose/releases/download/v$DOCKER_COMPOSE_VERSION/docker-compose-linux-x86_64 -o $DOCKER_CONFIG/cli-plugins/docker-compose
#chmod +x $DOCKER_CONFIG/cli-plugins/docker-compose


# Install Docker
echo "Install docker"
curl -fsSL https://get.docker.com -o install-docker.sh
chown ${USER}:${USER} install-docker.sh
sh install-docker.sh

echo "Install docker rootless"
apt install uidmap -y
su -c 'dockerd-rootless-setuptool.sh install' ${USER}

rm install-docker.sh
