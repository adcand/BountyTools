#!/bin/bash

mkdir ~/Bounty

apt install net-tools
apt install screen
apt install libpcap-dev
apt install feroxbuster 
snap install amass

# Install go 
wget https://go.dev/dl/go1.18.2.linux-amd64.tar.gz # Replace with latest version 
tar -C /usr/local/ -xzf go1.18.2.linux-amd64.tar.gz
cd /usr/local/
echo "export PATH=$PATH:/usr/local/go/bin" >> ~/.profile
source ~/.profile
cd ~

# Install BurpSuite
# Not today...

go install -v github.com/projectdiscovery/naabu/v2/cmd/naabu@latest
go install -v github.com/projectdiscovery/httpx/cmd/httpx@latest
go install -v github.com/michenriksen/aquatone@latest

cp ~/go/bin/aquatone /usr/local/go/bin/
cp ~/go/bin/naabu /usr/local/go/bin/
cp ~/go/bin/httpx /usr/local/go/bin/
