#!bin/bash
## Needs 2 inputs to run ##
## iperf documentation https://iperf.fr/iperf-doc.php#3doc ##

## Server node ##
ssh $1 << EOF
  sudo dnf install iperf3;
  iperf3 -s -1;
  exit;
EOF

## Server node ##
ssh $2 << EOF
  sudo dnf install iperf3;
  iperf3 -c -Z $1 --logfile /nfs/general/logs/iperf.txt;
  exit;
EOF