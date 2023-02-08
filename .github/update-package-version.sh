#!/bin/bash

yarn upgrade $1 --latest
if [ -n "$(git status --porcelain)" ]; then
  echo "Changes detected"
  git add .
  git commit -m "chore: auto deps upgrade"
  yarn lint
  yarn test
  git push origin $2
else
  echo "No changes detected"
fi