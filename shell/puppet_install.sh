#!/bin/bash
CHECK_APP=$(dpkg -l puppet)
if [[ $? -gt 0 ]]; then
    apt-get update && apt-get -y install puppet
fi
echo "Puppet installed!"