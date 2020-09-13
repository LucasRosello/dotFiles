#!/bin/bash


# Go
wget ​ https://dl.google.com/go/go1.14.linux-amd64.tar.gz
tar -xvf go1.14.linux-amd64.tar.gz
rm go1.14.linux-amd64.tar.gz
mv go /usr/local

echo "
# Go
export GOROOT=/usr/local/go
export GOPATH=$""HOME/go
export GOBIN=$""GOPATH/bin
export PATH=$""PATH:$""GOBIN:$""GOROOT/bin
" >> /home/lucas/.profile

mkdir -p /home/lucas/go/src/github.com/customer-experience
chmod 777 -R /home/lucas/go/src/github.com/customer-experience
chmod 777 -R /home/lucas/go


exit