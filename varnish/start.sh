#!/usr/bin/env bash
set -e

exec bash -c \
    "exec varnishd \
    -a :80 \
    -T localhost:6082 \
    -F -u varnish \
    -f $VCL_CONFIG \
    -s malloc,$CACHE_SIZE \
    $VARNISHD_PARAMS"