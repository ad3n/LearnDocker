#!/usr/bin/env bash
set -e

exec bash -c \
    "exec varnishd \
    -a :$VARNISH_PORT \
    -T localhost:6082 \
    -F -u varnish \
    -f $VARNISH_CONFIG \
    -s malloc,$CACHE_SIZE \
    $VARNISHD_PARAMS"