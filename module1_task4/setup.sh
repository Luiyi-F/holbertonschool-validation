#!/usr/bin/env bash

# Update and install packages
apt-get update && apt-get install -y curl
curl -L https://github.com/gohugoio/hugo/releases/download/v0.109.0/hugo_0.109.0_linux-amd64.deb -o go.deb
apt-get install -y ./go.deb
rm go.deb
apt-get install -y make-
# make
make build