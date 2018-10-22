#!/bin/bash 

set -e 

  mkdir ~/buildah
  cd ~/buildah
  export GOPATH=`pwd`
  git clone https://github.com/containers/buildah ./src/github.com/containers/buildah
  cd ./src/github.com/containers/buildah
  make
  sudo make install