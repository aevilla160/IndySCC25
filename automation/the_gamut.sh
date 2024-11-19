#!/usr/bin/env bash
set -e

# Who needs Ansible when you have CTRL-C and CTRL-V? #

echo "RUNNING THE GAMUT"

cd /nfs/general/resources/setup/scripts

## Login Node setup ##
./get_ips.sh 11 >> ips.txt
# ./login_nfs_setup.sh
./aocc_setup.sh
./spack_setup.sh
# ./slurm_login_setup.sh
# ./mpi_setup.sh

## CPU Nodes setup ##
ssh scc135-cpu0 << EOF
  hostname
  sudo dnf update -y
  cd /nfs/general/resources/setup
  ./aocc_setup.sh
  ./spack_setup.sh
  exit
EOF

ssh scc135-cpu1 << EOF
  hostname
  sudo dnf update -y
  cd /nfs/general/resources/setup
  ./aocc_setup.sh
  ./spack_setup.sh
  exit
EOF

ssh scc135-cpu2 << EOF
  hostname
  sudo dnf update -y
  cd /nfs/general/resources/setup
  ./aocc_setup.sh
  ./spack_setup.sh
  exit
EOF

ssh scc135-cpu3 << EOF
  hostname
  sudo dnf update -y
  cd /nfs/general/resources/setup
  ./aocc_setup.sh
  ./spack_setup.sh
  exit
EOF

ssh scc135-cpu4 << EOF
  hostname
  sudo dnf update -y
  cd /nfs/general/resources/setup
  ./aocc_setup.sh
  ./spack_setup.sh
  exit
EOF

ssh scc135-cpu5 << EOF
  hostname
  sudo dnf update -y
  cd /nfs/general/resources/setup
  ./aocc_setup.sh
  ./spack_setup.sh
  exit
EOF

ssh scc135-cpu6 << EOF
  hostname
  sudo dnf update -y
  cd /nfs/general/resources/setup
  ./aocc_setup.sh
  ./spack_setup.sh
  exit
EOF

ssh scc135-cpu7 << EOF
  hostname
  sudo dnf update -y
  cd /nfs/general/resources/setup
  ./aocc_setup.sh
  ./spack_setup.sh
  exit
EOF

ssh scc135-cpu8 << EOF
  hostname
  sudo dnf update -y
  cd /nfs/general/resources/setup
  ./aocc_setup.sh
  ./spack_setup.sh
  exit
EOF

ssh scc135-cpu9 << EOF
  hostname
  sudo dnf update -y
  cd /nfs/general/resources/setup
  ./aocc_setup.sh
  ./spack_setup.sh
  exit
EOF

ssh scc135-gpu0 << EOF
  hostname
  sudo dnf update -y
  cd /nfs/general/resources/setup
  ./aocc_setup.sh
  ./spack_setup.sh
  exit
EOF
