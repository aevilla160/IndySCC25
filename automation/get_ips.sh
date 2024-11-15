#!/bin/bash

BASE_HOSTNAME="scc135-cpu"
USER="rocky"
for i in {0..29}; do
  HOSTNAME="${USER}@${BASE_HOSTNAME}${i}"
   echo "${HOSTNAME}: $(ssh -o StrictHostKeyChecking=no "$HOSTNAME" "hostname -I")"
done
