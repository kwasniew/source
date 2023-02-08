#!/bin/bash

yarn upgrade unleash-server --latest
if git diff-index --quiet HEAD
then
  echo "No changes present"
else
  echo "Changes detected"
  yarn test
  git add .
  git commit -m "chore: auto deps upgrade"
  git push origin ${{ github.ref_name }}
fi