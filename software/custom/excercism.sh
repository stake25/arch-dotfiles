#!/bin/bash

filename=$(curl -s https://api.github.com/repos/exercism/cli/releases/latest \
 | jq -r '.assets[] | select(.name | contains("linux-x86_64")) | .browser_download_url' \
 | head -n 1 | xargs curl -LO --output-dir ~/Downloads --write-out "%{filename_effective}")

tar -xf $filename -C ~/Downloads
mkdir -p ~/.bin
mv ~/Downloads/exercism ~/.bin
