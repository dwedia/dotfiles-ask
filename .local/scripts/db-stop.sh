#!/bin/bash
for i in $(podman ps -a | grep -v 'CONTAINER ID' | awk '{print $1}') ;
    do podman stop $i ; 
done >/dev/null 2>&1 && distrobox list
