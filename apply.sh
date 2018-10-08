#!/bin/bash

EXTRA_ARGS=''

if [[ "$1" == 'webserver' ]]; then
  EXTRA_ARGS='--certname data.webserver.1'
fi

puppet apply --noop -t \
  --color true \
  --modulepath 'environments/data/modules' \
  --environment data \
  $EXTRA_ARGS \
  environments/data/manifests/site.pp
