#!/bin/bash

# Copyright: Aleksander Spyra
# Wrocław 2018

#!/bin/bash

function RootCheck
{
  local NAME=$1
  if [[ ! $(whoami) == root ]]; then
    echo "This script use only with root privileges. Use 'sudo $NAME'"
    exit 1
  fi
}

RootCheck $0

FIREFOX_PIDS=$(ps aux | grep firefox | grep -v kill_firefox | tr -s " " | cut -d " " -f2 | head -n -1)

for P in $FIREFOX_PIDS; do
  kill -9 $P
done

# Wersja jednolinijkowa: 
ps aux | grep firefox | grep -v kill_firefox | tr -s " " | cut -d " " -f2 | head -n -1 | xargs kill -9

