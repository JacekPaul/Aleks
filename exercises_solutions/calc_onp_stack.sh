#!/bin/bash

# Copyright: Aleksander Spyra
# Wrocław 2018

EXPRESSION=$1

if [[ -z "$EXPRESSION" ]]; then
  echo "Podaj jeden parametr - wyrażenie w ONP do policzenia"
  exit 1
fi

declare -a stack
# Wskazuje na pierwszą wolną komórkę
stack_counter=0

function push_to_stack {
  stack[$stack_counter]=$1
  stack_counter=$((stack_counter + 1))
}

function pull_from_stack {
  stack_counter=$((stack_counter - 1))
  if [[ $stack_counter -lt 0 ]]; then
    return 1
  else
    return 0
  fi
}

function calc {
  local op=$1
  pull_from_stack
  local a_status=$?
  local a=${stack[$stack_counter]}
  pull_from_stack
  local b_status=$?
  local b=${stack[$stack_counter]}

  if [[ a_status -ne "0" || b_status -ne "0" ]]; then
    echo "Nieprawidłowe wyrażenie"
    exit 1
  fi
  local result
  
  if [[ $op = '+' ]]; then
    result=$((a + b))
  elif [[ $op = "-" ]]; then
    result=$((a - b))
  elif [[ $w = "\*" ]]; then
    result=$((a * b))
  elif [[ $w = "/" ]]; then
    result=$((a / b))
  else
    echo "Nieznany operator!"
    exit 1
  fi
  
  push_to_stack $result
}

for w in $EXPRESSION; do
  if [[ $w == '+' || $w == "-" || $w == "\*" || $w == "/" ]]; then
    calc $w
  else
    push_to_stack $w
  fi
done

if [[ $stack_counter -eq "1" ]]; then
  result=${stack[$((stack_counter-1))]}
  echo "($EXPRESSION) = $result"
else
  echo "Niepoprawne wyrażenie"
  exit 1
fi

