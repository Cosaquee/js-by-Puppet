#!/bin/bash

if ! dpkg -l | grep -q 'ii  puppetlabs-release'; then
    wget https://apt.puppetlabs.com/puppetlabs-release-trusty.deb
    sudo dpkg -i puppetlabs-release-trusty.deb && sudo apt-get update
fi
