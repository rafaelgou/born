#!/bin/bash

DATE=$1
touch -d "${DATE}" README.md
touch -d "${DATE}" make-me-born.sh

rm -rf .git/
git init
git add .

export GIT_COMMITTER_DATE=$DATE
git commit --date "${DATE}" -m "Initialize programmer"
unset GIT_COMMITTER_DATE

echo
echo "Add your remote origin, push, and you're alive!"
