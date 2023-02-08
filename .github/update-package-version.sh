#!/bin/bash

yarn upgrade $1 --latest
if git diff-index --quiet HEAD
then
  echo "No changes present"
else
  echo "Changes detected"
  yarn test
  git add .
  git commit -m "chore: auto deps upgrade"
  git push origin $2
fi