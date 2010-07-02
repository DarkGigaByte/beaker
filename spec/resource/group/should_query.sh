#!/bin/bash

set -e
set -u

. ../../../local_setup.sh

if ! grep bozo /etc/group; then
  groupadd bozo
fi

$BIN/puppet resource group bozo | grep present
