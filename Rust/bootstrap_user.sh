#!/usr/bin/env bash

flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo

echo Install Firefox
flatpak install -y --noninteractive flathub org.mozilla.firefox

wget -O ideaIU.tar.gz https://download.jetbrains.com/idea/ideaIU-2022.1.1.tar.gz
sudo tar -xzf ideaIU.tar.gz -C /opt


echo $HOME

echo Install Rust
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y

source $HOME/.cargo/env
rustc --version
rustup install stable
rustup default stable

echo Update Rust
rustup update
echo Install Trunk
cargo install --locked trunk
