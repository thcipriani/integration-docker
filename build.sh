#!/usr/bin/env bash
# Build and tag all base images in this directory

BASEPATH=$(cd -P -- "$(dirname -- "$0")" && pwd -P)
IMAGETAG=

for dockerfile in "$BASEPATH"/dockerfile-*; do
    filename="${dockerfile##*/}"

    # Trim "dockerfile-" from dockerfile name to get tagname
    IMAGETAG=${filename:11}
    docker build -t "wikimedia:${IMAGETAG}" -f "$dockerfile" "$BASEPATH"
done
