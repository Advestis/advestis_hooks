#!/bin/bash

MESSAGE=$(cat .git/COMMIT_EDITMSG)

if [[ "$MESSAGE" =~ ^(chg|fix|new)(: )((dev|usr|pkg|test|doc)(: ))?.*(\!|\@)?.*$ ]];
then
  exit 0
else
  echo -e "Error in commit message, pls begin by dev:, chg: or fix: >&2
  exit 1
fi
