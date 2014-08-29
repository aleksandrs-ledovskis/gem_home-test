#!/bin/bash
sudo apt-get update -qq
sudo apt-get install -y git zsh shunit2
git clone https://github.com/postmodern/gem_home.git
cd gem_home
sudo make install

/bin/zsh /vagrant/test.zsh
