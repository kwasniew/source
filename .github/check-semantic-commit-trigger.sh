#!/bin/bash

if [[ "$1" =~ ^(feat:|fix:|refactor|chore:).* ]]; then
    echo "true"
else
    echo "false"
fi