#!/bin/bash

set -eo pipefail

pushd build-scripts

docker build -t arch-amd64-builds .

docker run \
  -t \
  --rm \
  -v "$(pwd)/../artifacts:/artifacts:Z" \
  -v "$(pwd):/build-scripts" \
  arch-amd64-builds \
  /build-scripts/repo.bash

popd

