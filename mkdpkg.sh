#!/bin/bash

pkgversion=1.0.0
arch=amd64

go build

installsize=$(du -ks "LKLA"|cut -f 1)
mkdir -p LKLA_${pkgversion}_${arch}/{DEBIAN,usr/bin}
cp control "LKLA_${pkgversion}_${arch}/DEBIAN"
sed -i -e "s/pkgver/${pkgversion}/g" "LKLA_${pkgversion}_${arch}/DEBIAN/control"
sed -i -e "s/pkgarch/${arch}/g" "LKLA_${pkgversion}_${arch}/DEBIAN/control"
sed -i -e "s/pkgsize/$installsize/g" "LKLA_${pkgversion}_${arch}/DEBIAN/control"
cp LKLA "LKLA_${pkgversion}_${arch}/usr/bin/LKLA"
chmod -w "LKLA_${pkgversion}_${arch}/usr/bin/LKLA"
chmod +x "LKLA_${pkgversion}_${arch}/usr/bin/LKLA"
dpkg-deb --build "LKLA_${pkgversion}_${arch}"
rm -rf "LKLA_${pkgversion}_${arch}"
