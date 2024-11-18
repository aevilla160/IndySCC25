#!/bin/bash

## Requires 2 inputs

BASE_HOSTNAME="$1"
USER="rocky"
for i in {0..$2}; do
  HOSTNAME="${USER}@${BASE_HOSTNAME}${i}"
   echo "${HOSTNAME}: $(ssh -o StrictHostKeyChecking=no "$HOSTNAME" "hostname -I")"
done
