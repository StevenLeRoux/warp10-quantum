#/bin/bash

rm -fr ../dist
mkdir ../dist

rm -f ../bower_components/warp10-quantum
cp -r ../bower_components/* ../dist/
mkdir ../dist/warp10-quantum
cp -r ../*.html ../favicon.* ../ace ../dist/warp10-quantum/
ln -s .. ../bower_components/warp10-quantum
