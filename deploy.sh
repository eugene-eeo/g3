#!/usr/bin/env bash
branch=$(git rev-parse --abbrev-ref HEAD)
commit_hash=$(git rev-parse HEAD)

source alias.sh
cd docs/ || exit
g3-build
cd ..

mkdir .tmp
cp -r docs/_g3/dst/ .tmp

git checkout gh-pages
rm -rf *
mv .tmp/* .
git commit -am "build $commit_hash"
git push
git checkout "$branch"
