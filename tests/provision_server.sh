#!/bin/bash

# Installs appropriate packages for Vagrant vms

# apt-get install -y python-software-properties
wget --quiet http://apt.puppetlabs.com/puppetlabs-release-precise.deb -O /tmp/puppetlabs-release-precise.deb
dpkg -i /tmp/puppetlabs-release-precise.deb
apt-get update
apt-get install -y ruby-json redis-server puppet-common vim-nox ruby-dev nagios-plugins #masterless puppet
sed -i '/templatedir/d' /etc/puppet/puppet.conf
puppet module install sensu/sensu
puppet module install puppetlabs/rabbitmq
puppet module install yelp/monitoring_check
