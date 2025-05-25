#!/bin/bash

set -xe

rpmfile="${1}"
# extract nvr
nvr=$(rpm -qp --queryformat '%{SOURCERPM}' ${rpmfile} | sed s'/.src.rpm$//')

koji_rebuild.py ${nvr}
