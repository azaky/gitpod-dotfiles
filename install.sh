#!/bin/bash

# Git Config
git config --global alias.s status

# Install air
go install github.com/cosmtrek/air@latest

# Install serve, to serve static files
npm i -g serve

# Install doppler
# https://docs.doppler.com/docs/install-cli
(curl -Ls --tlsv1.2 --proto "=https" --retry 3 https://cli.doppler.com/install.sh || wget -t 3 -qO- https://cli.doppler.com/install.sh) | sudo sh

# Install migrate
go install -tags 'postgres' github.com/golang-migrate/migrate/v4/cmd/migrate@latest
