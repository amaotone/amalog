#!/bin/bash

echo -e "Deploying updates to GitHub...\n"
rm -rf public/
hugo
git add -A

msg="rebuilding site at $(date +"%Y-%m-%d %H:%M:%S")"
if [ $# -eq 1 ]
	then msg="$1"
fi

git commit -m "$msg"

git push origin master
git subtree push --prefix=public git@github.com:amaotone/amalog.git gh-pages
