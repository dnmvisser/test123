#!/usr/bin/env bash
. ~/venv/bin/activate

cat ~/foo/metadata.xml |\
    xq '."md:EntitiesDescriptor"."md:EntityDescriptor" |= sort_by(."@entityID")' |\
    yq -r .

