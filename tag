#!/bin/bash
rm -rf repository
git clone $1 repository

cd repository

read -p "Push tag? [Enter] to continue " -n 1 -r

echo "Commiting changes";

git add .
git commit -m "tag: $2"

echo "Creating tag: $2";
git tag $2
git push origin master --tags


