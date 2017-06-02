#!/bin/bash

cd /tmp
curl -LO https://storage.googleapis.com/golang/go1.7.linux-amd64.tar.gz

tar -C /usr/local -xvzf go1.7.linux-amd64.tar.gz

export GOPATH=$PREFIX
export GOROOT=/usr/local/go
export PATH=$PATH:$GOROOT/bin
go get github.com/venicegeo/pzsvc-exec/...

