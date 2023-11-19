#!/bin/bash

# Scan homedir with Clamscan. Exclude Company net shares and RMGIT
#

clamscan -r /home/eribel/ --exclude-dir=/home/eribel/netshares/ --exclude-dir=/home/eribel/Documents/RMGIT/
