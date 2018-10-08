#!/bin/bash
# Run the image interactively

docker run \
  --rm \
  -it \
  --entrypoint /bin/bash \
  --net host \
  -v "$(pwd):/mnt" \
  -w /mnt \
  giftig/puppet-playground:latest
