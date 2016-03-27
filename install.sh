#!/bin/bash

echo "Installing..."

refresh() {
	source ~/.bash_profile
}

curl -L https://get.rvm.io | bash

refresh

rvm install 2.3.0
rvm use 2.3.0

refresh

gem install jekyll

echo "Done."
