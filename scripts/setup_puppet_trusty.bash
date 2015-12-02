#!/bin/bash

#gem install puppet-lint

wget -c http://apt.puppetlabs.com/puppetlabs-release-trusty.deb
sudo dpkg -i puppetlabs-release-trusty.deb
sudo apt-get update && sudo apt-get install puppet puppet-lint
sudo rm -f puppetlabs-release-trusty.deb
