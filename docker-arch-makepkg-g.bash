#!/bin/bash

set -eu -o pipefail

PKGNAME="$(basename "$1")"

pushd build-scripts

docker build -t arch-amd64-builds .

docker run \
  -t \
  --rm \
  -v "$(pwd)/../$PKGNAME:/sourcedata:Z" \
  -v "$(pwd):/build-scripts:Z" \
  arch-amd64-builds \
  /build-scripts/console.bash "makepkg -g >> PKGBUILD"

popd

