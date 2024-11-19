#!/usr/bin/env bash
set -e

# Who needs Ansible when you have CTRL-C and CTRL-V? #
if [ $# -ne 1 ]; then
    echo "Error: Please provide the number of hosts to set up"
    echo "Usage: $0 <number_of_hosts>"
    exit 1
fi

# Store the argument
NUM_HOSTS=$1

BASE_HOSTNAME="scc135-cpu"
USER="rocky"

echo "RUNNING THE GAMUT"

cd ~/IndySCC24/automation
sudo cp * /nfs/general/resources/setup/scripts
cd /nfs/general/resources/setup/scripts
sudo chmod +x *

## Login Node setup ##
./get_ips.sh NUM_HOSTS >> /nfs/general/logs/ips.txt
./login_nfs_setup.sh
./aocc_setup.sh
./spack_setup.sh
# ./slurm_login_setup.sh
# ./mpi_setup.sh

for i in $(seq 0 $((NUM_HOSTS-1))); do
  HOSTNAME="${USER}@${BASE_HOSTNAME}${i}"
  ssh -o StrictHostKeyChecking=no "${HOSTNAME}" << EOF
  hostname
  sudo dnf update -y
  cd /nfs/general/resources/setup
  ./aocc_setup.sh
  ./spack_setup.sh
  exit
EOF
done

# ## CPU Nodes setup ##
# ssh scc135-cpu0 << EOF
#   hostname
#   sudo dnf update -y
#   cd /nfs/general/resources/setup
#   ./aocc_setup.sh
#   ./spack_setup.sh
#   exit
# EOF

# ssh scc135-cpu1 << EOF
#   hostname
#   sudo dnf update -y
#   cd /nfs/general/resources/setup
#   ./aocc_setup.sh
#   ./spack_setup.sh
#   exit
# EOF

# ssh scc135-cpu2 << EOF
#   hostname
#   sudo dnf update -y
#   cd /nfs/general/resources/setup
#   ./aocc_setup.sh
#   ./spack_setup.sh
#   exit
# EOF

# ssh scc135-cpu3 << EOF
#   hostname
#   sudo dnf update -y
#   cd /nfs/general/resources/setup
#   ./aocc_setup.sh
#   ./spack_setup.sh
#   exit
# EOF

# ssh scc135-cpu4 << EOF
#   hostname
#   sudo dnf update -y
#   cd /nfs/general/resources/setup
#   ./aocc_setup.sh
#   ./spack_setup.sh
#   exit
# EOF

# ssh scc135-cpu5 << EOF
#   hostname
#   sudo dnf update -y
#   cd /nfs/general/resources/setup
#   ./aocc_setup.sh
#   ./spack_setup.sh
#   exit
# EOF

# ssh scc135-cpu6 << EOF
#   hostname
#   sudo dnf update -y
#   cd /nfs/general/resources/setup
#   ./aocc_setup.sh
#   ./spack_setup.sh
#   exit
# EOF

# ssh scc135-cpu7 << EOF
#   hostname
#   sudo dnf update -y
#   cd /nfs/general/resources/setup
#   ./aocc_setup.sh
#   ./spack_setup.sh
#   exit
# EOF

# ssh scc135-cpu8 << EOF
#   hostname
#   sudo dnf update -y
#   cd /nfs/general/resources/setup
#   ./aocc_setup.sh
#   ./spack_setup.sh
#   exit
# EOF

# ssh scc135-cpu9 << EOF
#   hostname
#   sudo dnf update -y
#   cd /nfs/general/resources/setup
#   ./aocc_setup.sh
#   ./spack_setup.sh
#   exit
# EOF

# ssh scc135-gpu0 << EOF
#   hostname
#   sudo dnf update -y
#   cd /nfs/general/resources/setup
#   ./aocc_setup.sh
#   ./spack_setup.sh
#   exit
# EOF
