#!/bin/bash

apt-get update && apt-get dist-upgrade -y && apt-get clean
apt install -y git vim wget
wget -c http://apt.puppetlabs.com/puppetlabs-release-pc1-xenial.deb
dpkg -i puppetlabs-release-pc1-xenial.deb && rm -f *.deb
apt-get update
apt-get install -y puppet-agent

export PATH=/opt/puppetlabs/bin:$PATH
puppet --version
facter --version
puppet module install puppetlabs-docker
