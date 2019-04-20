#!/bin/bash

test -d ~/tmp || mkdir ~/tmp
pushd ~/tmp
# apt update
sudo apt update

# chrome install
wget -c https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo dpkg -i google-chrome-stable_current_amd64.deb

# discord
sudo apt install -y curl
DISCORD_URL="https://discordapp.com/api/download?platform=linux&format=deb"
wget -c --trust-server-names ${DISCORD_URL}
sudo dpkg -i $(basename $(curl -ILs -o /dev/null -w %{url_effective} "${DISCORD_URL}"))
# TODO discord install failed
sudo apt --fix-broken install
# sudo snap install discord

# git install
sudo apt install -y git

# vim install
sudo apt install -y \
	vim \
        vifm
# docekr
sudo apt install -y \
        docker.io \
        docker-compose

# vlc
sudo apt install -y vlc

popd
