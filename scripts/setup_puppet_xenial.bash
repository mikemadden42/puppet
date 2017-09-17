#!/bin/bash

apt-get update && apt-get dist-upgrade -y && apt-get clean
apt install -y git vim wget
wget -c http://apt.puppetlabs.com/puppetlabs-release-pc1-xenial.deb 
dpkg -i puppetlabs-release-pc1-xenial.deb && rm -f *.deb
apt-get update
apt-get install -y puppet-agent
/opt/puppetlabs/bin/puppet --version
/opt/puppetlabs/bin/facter --version
