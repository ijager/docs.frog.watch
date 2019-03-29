#!/usr/bin/env bash

echo "Note: this should run in the 'pipenv shell' environment..."

make css
make build

echo "\nPlease manually upload the 'site' folder to the target via FTP..."
