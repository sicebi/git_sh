#!/bin/sh

git fetch --all
git checkout development
git pull

git checkout master
git pull

git merge --strategy-option=theirs development -m "development:merge to master"

git push origin master

#git push origin --delete branchname
