#!/usr/bin/env bash
npm run gen:docs
cd _book
git init
git add -A
git commit -m 'update docs'
git push -f git@github.com:cloud-templates/cloud-utils.git master:gh-pages
