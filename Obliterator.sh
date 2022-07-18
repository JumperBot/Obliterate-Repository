#!/bin/sh

echo "Running Obliterator.sh, see you soon!"

cd /github/workspace || exit 1

git config --global --add safe.directory /github/workspace
git config --global user.name "github-actions[bot]"
git config --global user.email "github-actions[bot]@users.noreply.github.com"

mv .git/ ../
cd ..
rm -rf workspace/.*
rm -rf workspace/*
mv .git/ workspace/
cd workspace

if [ $3 = true ]; then
  git restore README.*
fi

if [ -n "$(git status --porcelain)" ]; then
  git add -A
  git commit -m "$2"
  git push --set-upstream origin "$1"
  echo "We're done over here!"
else
  echo "Nothing to commit here!"
fi
