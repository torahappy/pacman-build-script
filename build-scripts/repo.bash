#!/bin/bash

cd /artifacts

export PATH="/build-scripts/hack:$PATH"

find . -name "*.pkg.tar.zst" -exec repo-add arch-mact2.db.tar.gz {} \;
