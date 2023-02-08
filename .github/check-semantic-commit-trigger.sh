#!/bin/bash

if [[ "$1" =~ ^(feat:|fix:|refactor|chore:).* ]]; then
    echo "Semantic release commit detected"
    exit 0
else
    echo "This commit will not trigger a build"
    exit 1
fi