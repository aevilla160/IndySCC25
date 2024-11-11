#!/usr/bin/env bash
set -e

# Who needs Ansible when you have CTRL-C and CTRL-V? #

echo "RUNNING THE GAMUT"

sudo chmod +x *.sh

## Login Node setup ##
./get_ips.sh >> ips.txt
./login_nfs_setup.sh
./aocc_setup.sh
./spack_setup.sh
./slurm_login_setup.sh
./mpi_setup.sh

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

ssh scc135-cpu10 << EOF
  hostname
  sudo dnf update -y
  cd /nfs/general/resources/setup
  ./aocc_setup.sh
  ./spack_setup.sh
  exit
EOF

ssh scc135-cpu11 << EOF
  hostname
  sudo dnf update -y
  cd /nfs/general/resources/setup
  ./aocc_setup.sh
  ./spack_setup.sh
  exit
EOF

ssh scc135-cpu12 << EOF
  hostname
  sudo dnf update -y
  cd /nfs/general/resources/setup
  ./aocc_setup.sh
  ./spack_setup.sh
  exit
EOF

ssh scc135-cpu13 << EOF
  hostname
  sudo dnf update -y
  cd /nfs/general/resources/setup
  ./aocc_setup.sh
  ./spack_setup.sh
  exit
EOF

ssh scc135-cpu14 << EOF
  hostname
  sudo dnf update -y
  cd /nfs/general/resources/setup
  ./aocc_setup.sh
  ./spack_setup.sh
  exit
EOF

ssh scc135-cpu15 << EOF
  hostname
  sudo dnf update -y
  cd /nfs/general/resources/setup
  ./aocc_setup.sh
  ./spack_setup.sh
  exit
EOF

ssh scc135-cpu16 << EOF
  hostname
  sudo dnf update -y
  cd /nfs/general/resources/setup
  ./aocc_setup.sh
  ./spack_setup.sh
  exit
EOF

ssh scc135-cpu17 << EOF
  hostname
  sudo dnf update -y
  cd /nfs/general/resources/setup
  ./aocc_setup.sh
  ./spack_setup.sh
  exit
EOF

ssh scc135-cpu18 << EOF
  hostname
  sudo dnf update -y
  cd /nfs/general/resources/setup
  ./aocc_setup.sh
  ./spack_setup.sh
  exit
EOF

ssh scc135-cpu19 << EOF
  hostname
  sudo dnf update -y
  cd /nfs/general/resources/setup
  ./aocc_setup.sh
  ./spack_setup.sh
  exit
EOF

ssh scc135-cpu20 << EOF
  hostname
  sudo dnf update -y
  cd /nfs/general/resources/setup
  ./aocc_setup.sh
  ./spack_setup.sh
  exit
EOF

ssh scc135-cpu21 << EOF
  hostname
  sudo dnf update -y
  cd /nfs/general/resources/setup
  ./aocc_setup.sh
  ./spack_setup.sh
  exit
EOF

ssh scc135-cpu22 << EOF
  hostname
  sudo dnf update -y
  cd /nfs/general/resources/setup
  ./aocc_setup.sh
  ./spack_setup.sh
  exit
EOF

ssh scc135-cpu23 << EOF
  hostname
  sudo dnf update -y
  cd /nfs/general/resources/setup
  ./aocc_setup.sh
  ./spack_setup.sh
  exit
EOF

ssh scc135-cpu24 << EOF
  hostname
  sudo dnf update -y
  cd /nfs/general/resources/setup
  ./aocc_setup.sh
  ./spack_setup.sh
  exit
EOF

ssh scc135-cpu25 << EOF
  hostname
  sudo dnf update -y
  cd /nfs/general/resources/setup
  ./aocc_setup.sh
  ./spack_setup.sh
  exit
EOF

ssh scc135-cpu26 << EOF
  hostname
  sudo dnf update -y
  cd /nfs/general/resources/setup
  ./aocc_setup.sh
  ./spack_setup.sh
  exit
EOF

ssh scc135-cpu27 << EOF
  hostname
  sudo dnf update -y
  cd /nfs/general/resources/setup
  ./aocc_setup.sh
  ./spack_setup.sh
  exit
EOF

ssh scc135-cpu28 << EOF
  hostname
  sudo dnf update -y
  cd /nfs/general/resources/setup
  ./aocc_setup.sh
  ./spack_setup.sh
  exit
EOF

ssh scc135-cpu29 << EOF
  hostname
  sudo dnf update -y
  cd /nfs/general/resources/setup
  ./aocc_setup.sh
  ./spack_setup.sh
  exit
EOF

