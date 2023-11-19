#!/bin/bash


if [ -f $HOME/Documents/gitRepos/myOwnRepos/ansibleAtHome/playbooks/localhost_updatesWithRoles.yml ];
then
  ansible-playbook $HOME/Documents/gitRepos/myOwnRepos/ansibleAtHome/playbooks/localhost_updatesWithRoles.yml -K
else
  echo "localhost_updatesWithRoles is not present"
fi