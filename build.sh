#!/bin/bash

rm -rf target
mkdir target
cd target
git clone https://github.com/hgspsz/text .

cp -r ../static ./static
cp -r ../themes ./themes
cp ../config.toml config.toml

docker run --rm -it -v $PWD:/src -p 1313:1313 -u hugo jguyomard/hugo-builder hugo