#!/bin/bash

set -xe

rpmfile="${1}"
# extract nvr
nvr=$(rpm -qp --queryformat '%{NAME}-%{VERSION}-%{RELEASE}' ${rpmfile})

koji_rebuild.py ${nvr}
