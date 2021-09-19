#!/usr/bin/env sh

readonly DATE=$(date "+%Y.%m.%d")
readonly DIR=docs-$DATE

mkdir $DIR
cp -r src $DIR
cp book.toml $DIR
cp LICENSE $DIR
tar -czf $DIR.tar.gz $DIR
rm -r $DIR
