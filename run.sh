#!/bin/bash
# Run the image interactively

docker run \
  --rm \
  -it \
  --entrypoint /bin/bash \
  -v "$(pwd):/etc/puppetlabs/code" \
  -w /etc/puppetlabs/code\
  giftig/puppet-playground:latest
