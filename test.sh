#!/usr/bin/env bash
. ~/venv/bin/activate

cat ~/foo/metadata.xml |\
    xq '."md:EntitiesDescriptor"."md:EntityDescriptor"[]."md:ContactPerson" |= sort_by(."@contactType",."md:EmailAddress",."md:SurName",."md:GivenName")' |\
    yq -r .

