#!/bin/bash

# Remember to run as root and 
# to add ~/go/bin to path 

# Libpcap is a dependency to use naabu
apt install -y libpcap-dev
apt install -y feroxbuster

go install -v github.com/projectdiscovery/naabu/v2/cmd/naabu@latest
go install -v github.com/projectdiscovery/httpx/cmd/httpx@latest
go install -v github.com/ffuf/ffuf@latest
go install -v github.com/lc/gau/v2/cmd/gau@latest
