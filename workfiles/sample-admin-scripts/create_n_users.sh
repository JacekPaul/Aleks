#!/bin/bash

function RootCheck {
  local NAME=$1
  if [[ ! `whoami` == root ]]; then
    echo "This script use only with root privileges. Use 'sudo $NAME'"
    exit 1
  fi
}

RootCheck $0

if [[ $# -lt 1 ]]; then
  echo "Podaj liczbę użytkowników do utworzenia oraz (opcjonalnie) prefiks nazwy"
  exit 1
fi

NR_OF_USERS=$1

if [[ -n $2 ]]; then
  PREFIX=$2
else
  PREFIX="bae-user"
fi
  
read -p "Utworzysz $NR_OF_USERS użytkowników o prefiksie $PREFIX. Kontynuować? [T/n] " DECISION

if [[ "$DECISION" == "T" ]]; then
  for NUMBER in $(seq 1 $NR_OF_USERS); do
    USERNAME=$PREFIX$NUMBER
    useradd $USERNAME
    RANDOM_PASSWORD="bae-$(cat /dev/urandom | tr -dc 'a-zA-Z0-9' | fold -w6 | head -n 1)"
    echo "$USERNAME:$RANDOM_PASSWORD" | chpasswd
    echo -e "$USERNAME\t\t$RANDOM_PASSWORD"
  done
fi
