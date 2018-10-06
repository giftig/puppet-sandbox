#!/bin/bash
# Run the image interactively

docker --rm -it --entrypoint -v "$(pwd):/mnt" -w /mnt /bin/bash giftig/puppet-playground:latest
