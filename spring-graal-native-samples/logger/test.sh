#!/usr/bin/env bash

GREEN='\033[0;32m'
RED='\033[0;31m'
NC='\033[0m'

echo "Testing logger output"
OUTPUT=`./target/logger 2>&1`
if [[ $OUTPUT == *"INFO: info"* && $OUTPUT == *"SEVERE: ouch"* && $OUTPUT == *"java.lang.RuntimeException"* ]]
then
  printf "${GREEN}SUCCESS${NC}\n"
  exit 0
else
  printf "${RED}FAILURE${NC}: the output of the application does not contain the expected output\n"
  exit 1
fi
