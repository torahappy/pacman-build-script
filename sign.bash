#!/bin/bash

find ./artifacts -type f -name "*.tar.zst" -exec gpg --yes --detach-sig {} \;
