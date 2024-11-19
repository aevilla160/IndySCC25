#!/bin/bash

if [ $# -ne 1 ]; then
    echo "Error: Please provide the number of hosts to check"
    echo "Usage: $0 <number_of_hosts>"
    exit 1
fi

# Store the argument
NUM_HOSTS=$1

BASE_HOSTNAME="scc135-cpu"
USER="rocky"

for i in $(seq 0 $((NUM_HOSTS))); do
    HOSTNAME="${USER}@${BASE_HOSTNAME}${i}"
    echo "${HOSTNAME}: $(ssh -o StrictHostKeyChecking=no "${HOSTNAME}" "hostname -I")"
done