#!/bin/bash
#add fix to exercise2 here
sudo mv /etc/hosts /etc/hosts.old
sudo /bin/bash -c 'echo -e $(head -n -1 /etc/hosts.old) >> /etc/hosts'