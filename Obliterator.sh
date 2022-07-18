#!/bin/sh

echo "Running Obliterator.sh, see you soon!"

cd /github/workspace || exit 1

git config --global --add safe.directory /github/workspace
git config --global user.name "github-actions[bot]"
git config --global user.email "github-actions[bot]@users.noreply.github.com"

mv .git/ ../

if [ -f "README.md" ]; then
  readme_file=README.md
else
  readme_file=README.*
fi

if test -f readme_file && $3 ; then
  mv readme_file ..
fi

cd ..
rm -rf workspace/*
mv .git/ workspace/

if test -f readme_file && $3 ; then
  mv readme_file workspace/
fi

cd workspace

if [ -n "$(git status --porcelain)" ]; then
  git add -A
  git commit -a -m "$2"
  git push --set-upstream origin "$1"
  echo "We're done over here!"
else
  echo "Nothing to commit here!"
fi
