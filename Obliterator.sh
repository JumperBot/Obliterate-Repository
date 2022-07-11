#!/bin/sh

echo "Running Obliterator.sh, see you soon!"

cd /github/workspace || exit 1

git config --global --add safe.directory /github/workspace
git config --global user.name "github-actions[bot]"
git config --global user.email "github-actions[bot]@users.noreply.github.com"

mv .git/ ../
cd ..
rm -rf workspace/*
mv .git/ workspace/
cd workspace

git add -A
git commit -a -m "$2"
git push --set-upstream origin "$1"

echo "We're done over here!"
