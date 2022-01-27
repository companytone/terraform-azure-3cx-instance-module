#!/bin/bash

# From https://linuxcommandlibrary.com/man/gh-release

# get current releases
gh release list

# Get latest release
gh release list -L 1

CURRENT_VERSION=`gh release list -L 1 | cut -f1`
MAJOR_VERSION=`echo $CURRENT_VERSION | cut -f1 -d'.'`
MINOR_VERSION=`echo $CURRENT_VERSION | cut -f2 -d'.'`
PATCH_VERSION=`echo $CURRENT_VERSION | cut -f3 -d'.'`
NEW_PATCH_VERSION=$(($PATCH_VERSION + 1))
NEW_VERSION="$MAJOR_VERSION.$MINOR_VERSION.$NEW_PATCH_VERSION"

# Create new tag
git tag $NEW_VERSION

# Create new release
gh release create $NEW_VERSION --generate-notes