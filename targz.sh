#!/usr/bin/env sh

readonly PKG=docs
readonly DATE=$(date "+%Y.%m.%d")
readonly DIR=$PKG-$DATE

mkdir $DIR
cp -r src $DIR
cp book.toml $DIR
cp LICENSE $DIR
tar -czf $DIR.tar.gz $DIR
rm -r $DIR
