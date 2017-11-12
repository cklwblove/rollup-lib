#!/bin/bash

set -e
echo "Enter release version: "
read VERSION

read -p "Releasing $VERSION - are you sure (y/n)" -n 1 -r
echo
if [[ $REPLY =~ ^[Yy]$ ]]
then
  echo "Releasing $VERSION ..."

  # build
  VERSION=$VERSION npm run build && npm run docs:deploy

  # commit
  git add -A
  git add -f \
   dist/*.js

  git commit -m "[build] $VERSION"
  npm version $VERSION --message "[release] $VERSION"

  # publish
  git push origin refs/tags/v$VERSION
  git push

  if [[ -z $RELEASE_TAG ]]; then
    npm publish
  else
    npm publish --tag $RELEASE_TAG
  fi
fi
