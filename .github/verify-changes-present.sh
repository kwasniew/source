#!/bin/bash

if git diff-index --quiet HEAD
then
  echo "No changes present"
  exit 1;
else
  echo "Changes detected"
  exit 0;
fi