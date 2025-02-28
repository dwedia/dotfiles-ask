#!/bin/bash

### Script to update Fedora Atomic with ansible

if [ -f $HOME/.local/scripts/updatesWithAnsibleDNF/updatesWithAnsibleDNF.yml ];
then
  ansible-playbook $HOME/.local/scripts/updatesWithAnsibleDNF/updatesWithAnsibleDNF.yml -K
else
  echo "updatesWithAnsible playbook is not present"
fi