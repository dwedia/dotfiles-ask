#!/bin/bash

### Script to update Fedora Atomic with ansible

if [ -f $HOME/.local/scripts/updatesWithAnsibleRPMostree/updatesWithAnsible.yml ];
then
  ansible-playbook $HOME/.local/scripts/updatesWithAnsibleRPMostree/updatesWithAnsible.yml -K
else
  echo "updatesWithAnsible is not present"
fi
