#!/usr/bin/env bash

sudo apt-get update
sudo apt-get install git-core curl zlib1g-dev build-essential libssl-dev libreadline-dev libyaml-dev libsqlite3-dev sqlite3 libxml2-dev libxslt1-dev libcurl4-openssl-dev python-software-properties -y

# install postgresql
#sudo apt-get update
#sudo apt-get install postgresql postgresql-contrib libpq-dev -y

# setup a database for the app 
#sudo -u postgres createuser vagrant -s
#sudo -u vagrant createdb vagrant 

# install pip
wget https://bootstrap.pypa.io/get-pip.py
sudo python get-pip.py

# install virtalenv globally
sudo pip install virtualenv

# create virtualenv
virtualenv flaskapp
source /home/vagrant/flaskapp/bin/activate
pip install -r /vagrant/requirements.txt
