#!/bin/bash

## Requires 1 input

BASE_HOSTNAME="scc135-cpu"
USER="rocky"
for i in {0..$1}; do
  HOSTNAME="${USER}@${BASE_HOSTNAME}${i}"
   echo "${HOSTNAME}: $(ssh -o StrictHostKeyChecking=no "$HOSTNAME" "hostname -I")"
done
