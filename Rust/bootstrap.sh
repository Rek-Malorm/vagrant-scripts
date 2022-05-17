#!/usr/bin/env bash

apt-get update && apt-get upgrade

echo Install base applications
apt-get install -y build-essential gcc cmake

su vagrant

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
