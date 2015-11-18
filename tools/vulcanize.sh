#/bin/bash

./build.sh

rm -fr vulcanized/*

vulcanize --inline-scripts --inline-css  --out-html ../vulcanized/warp10-components.html ./warp10-components.html
sed -i -e 's/\r//' ../vulcanized/warp10-components.html

cat ../dist/warp10-quantum/warp10-quantum-widget.html ../dist/warp10-quantum/warp10-warpscript-widget.html ../dist/warp10-quantum/warp10-ingress-widget.html ../dist/warp10-quantum/warp10-delete-widget.html > ../vulcanized/warp10-quantum-catalog.html

vulcanize --inline-scripts --inline-css  --out-html ../vulcanized/warp10-quantum-doc.html warp10-quantum-doc.html
sed -i -e 's/\r//' ../vulcanized/warp10-quantum-doc.html

vulcanize --inline-scripts --inline-css  --out-html ../vulcanized/index.html ../dist/warp10-quantum/index.html
sed -i -e "s_\\.\\./bootstrap/dist_./assets/bootstrap/dist/_g" -e 's/\r//' ../vulcanized/index.html

cp ../dist/warp10-quantum/favicon.* ../vulcanized/
mkdir -p ../vulcanized/assets/bootstrap/dist/
cp -r ../dist/bootstrap/dist/* ../vulcanized/assets/bootstrap/dist/
mkdir -p ../vulcanized/assets/jquery/dist/
cp -r ../dist/jquery/dist/* ../vulcanized/assets/jquery/dist/
cp -r ../dist/webcomponentsjs/webcomponents* ../vulcanized/
