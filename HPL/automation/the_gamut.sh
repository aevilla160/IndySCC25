#!bin/bash

echo "RUNNING THE GAMUT"

sudo chmod +x *.sh

## Login Node setup ##
./login_nfs_setup.sh
./aocc_setup.sh
./spack_setup.sh
./slurm_login_setup.sh
./mpi_setup.sh

## CPU Nodes setup ##
ssh scc135-cpu0 << EOF
  cd ~
  scp -r setup rocky@hostname:/nfs/general/resources/setup
  cd setup; 
  ./cpu_nfs_setup.sh <login_ip>;
  ./aocc_setup.sh;
  ./spack_setup.sh
  ./slurm_login_setup.sh;
  ./mpi_setup.sh;
  exit;
EOF

ssh scc135-cpu1 << EOF
  cd ~
  scp -r setup rocky@hostname:/nfs/general/resources/setup
  cd setup; 
  ./cpu_nfs_setup.sh <login_ip>;
  ./aocc_setup.sh;
  ./spack_setup.sh
  ./slurm_login_setup.sh;
  ./mpi_setup.sh;
  exit;
EOF

ssh scc135-cpu2 << EOF
  cd ~
  scp -r setup rocky@hostname:/nfs/general/resources/setup
  cd setup; 
  ./cpu_nfs_setup.sh <login_ip>;
  ./aocc_setup.sh;
  ./spack_setup.sh
  ./slurm_login_setup.sh;
  ./mpi_setup.sh;
  exit;
EOF

ssh scc135-cpu3 << EOF
  cd ~
  scp -r setup rocky@hostname:/nfs/general/resources/setup
  cd setup; 
  ./cpu_nfs_setup.sh <login_ip>;
  ./aocc_setup.sh;
  ./spack_setup.sh
  ./slurm_login_setup.sh;
  ./mpi_setup.sh;
  exit;
EOF

ssh scc135-cpu4 << EOF
  cd ~
  scp -r setup rocky@hostname:/nfs/general/resources/setup
  cd setup; 
  ./cpu_nfs_setup.sh <login_ip>;
  ./aocc_setup.sh;
  ./spack_setup.sh
  ./slurm_login_setup.sh;
  ./mpi_setup.sh;
  exit;
EOF

ssh scc135-cpu5 << EOF
  cd ~
  scp -r setup rocky@hostname:/nfs/general/resources/setup
  cd setup; 
  ./cpu_nfs_setup.sh <login_ip>;
  ./aocc_setup.sh;
  ./spack_setup.sh
  ./slurm_login_setup.sh;
  ./mpi_setup.sh;
  exit;
EOF

ssh scc135-cpu6 << EOF
  cd ~
  scp -r setup rocky@hostname:/nfs/general/resources/setup
  cd setup; 
  ./cpu_nfs_setup.sh <login_ip>;
  ./aocc_setup.sh;
  ./spack_setup.sh
  ./slurm_login_setup.sh;
  ./mpi_setup.sh;
  exit;
EOF

ssh scc135-cpu7 << EOF
  cd ~
  scp -r setup rocky@hostname:/nfs/general/resources/setup
  cd setup; 
  ./cpu_nfs_setup.sh <login_ip>;
  ./aocc_setup.sh;
  ./spack_setup.sh
  ./slurm_login_setup.sh;
  ./mpi_setup.sh;
  exit;
EOF

ssh scc135-cpu8 << EOF
  cd ~
  scp -r setup rocky@hostname:/nfs/general/resources/setup
  cd setup; 
  ./cpu_nfs_setup.sh <login_ip>;
  ./aocc_setup.sh;
  ./spack_setup.sh
  ./slurm_login_setup.sh;
  ./mpi_setup.sh;
  exit;
EOF

ssh scc135-cpu9 << EOF
  cd ~
  scp -r setup rocky@hostname:/nfs/general/resources/setup
  cd setup; 
  ./cpu_nfs_setup.sh <login_ip>;
  ./aocc_setup.sh;
  ./spack_setup.sh
  ./slurm_login_setup.sh;
  ./mpi_setup.sh;
  exit;
EOF

ssh scc135-cpu10 << EOF
  cd ~
  scp -r setup rocky@hostname:/nfs/general/resources/setup
  cd setup; 
  ./cpu_nfs_setup.sh <login_ip>;
  ./aocc_setup.sh;
  ./spack_setup.sh
  ./slurm_login_setup.sh;
  ./mpi_setup.sh;
  exit;
EOF

ssh scc135-cpu11 << EOF
  cd ~
  scp -r setup rocky@hostname:/nfs/general/resources/setup
  cd setup; 
  ./cpu_nfs_setup.sh <login_ip>;
  ./aocc_setup.sh;
  ./spack_setup.sh
  ./slurm_login_setup.sh;
  ./mpi_setup.sh;
  exit;
EOF

ssh scc135-cpu12 << EOF
  cd ~
  scp -r setup rocky@hostname:/nfs/general/resources/setup
  cd setup; 
  ./cpu_nfs_setup.sh <login_ip>;
  ./aocc_setup.sh;
  ./spack_setup.sh
  ./slurm_login_setup.sh;
  ./mpi_setup.sh;
  exit;
EOF

ssh scc135-cpu13 << EOF
  cd ~
  scp -r setup rocky@hostname:/nfs/general/resources/setup
  cd setup; 
  ./cpu_nfs_setup.sh <login_ip>;
  ./aocc_setup.sh;
  ./spack_setup.sh
  ./slurm_login_setup.sh;
  ./mpi_setup.sh;
  exit;
EOF

ssh scc135-cpu14 << EOF
  cd ~
  scp -r setup rocky@hostname:/nfs/general/resources/setup
  cd setup; 
  ./cpu_nfs_setup.sh <login_ip>;
  ./aocc_setup.sh;
  ./spack_setup.sh
  ./slurm_login_setup.sh;
  ./mpi_setup.sh;
  exit;
EOF

ssh scc135-cpu15 << EOF
  cd ~
  scp -r setup rocky@hostname:/nfs/general/resources/setup
  cd setup; 
  ./cpu_nfs_setup.sh <login_ip>;
  ./aocc_setup.sh;
  ./spack_setup.sh
  ./slurm_login_setup.sh;
  ./mpi_setup.sh;
  exit;
EOF

ssh scc135-cpu16 << EOF
  cd ~
  scp -r setup rocky@hostname:/nfs/general/resources/setup
  cd setup; 
  ./cpu_nfs_setup.sh <login_ip>;
  ./aocc_setup.sh;
  ./spack_setup.sh
  ./slurm_login_setup.sh;
  ./mpi_setup.sh;
  exit;
EOF

ssh scc135-cpu17 << EOF
  cd ~
  scp -r setup rocky@hostname:/nfs/general/resources/setup
  cd setup; 
  ./cpu_nfs_setup.sh <login_ip>;
  ./aocc_setup.sh;
  ./spack_setup.sh
  ./slurm_login_setup.sh;
  ./mpi_setup.sh;
  exit;
EOF

ssh scc135-cpu18 << EOF
  cd ~
  scp -r setup rocky@hostname:/nfs/general/resources/setup
  cd setup; 
  ./cpu_nfs_setup.sh <login_ip>;
  ./aocc_setup.sh;
  ./spack_setup.sh
  ./slurm_login_setup.sh;
  ./mpi_setup.sh;
  exit;
EOF

ssh scc135-cpu19 << EOF
  cd ~
  scp -r setup rocky@hostname:/nfs/general/resources/setup
  cd setup; 
  ./cpu_nfs_setup.sh <login_ip>;
  ./aocc_setup.sh;
  ./spack_setup.sh
  ./slurm_login_setup.sh;
  ./mpi_setup.sh;
  exit;
EOF

ssh scc135-cpu20 << EOF
  cd ~
  scp -r setup rocky@hostname:/nfs/general/resources/setup
  cd setup; 
  ./cpu_nfs_setup.sh <login_ip>;
  ./aocc_setup.sh;
  ./spack_setup.sh
  ./slurm_login_setup.sh;
  ./mpi_setup.sh;
  exit;
EOF

ssh scc135-cpu21 << EOF
  cd ~
  scp -r setup rocky@hostname:/nfs/general/resources/setup
  cd setup; 
  ./cpu_nfs_setup.sh <login_ip>;
  ./aocc_setup.sh;
  ./spack_setup.sh
  ./slurm_login_setup.sh;
  ./mpi_setup.sh;
  exit;
EOF

ssh scc135-cpu22 << EOF
  cd ~
  scp -r setup rocky@hostname:/nfs/general/resources/setup
  cd setup; 
  ./cpu_nfs_setup.sh <login_ip>;
  ./aocc_setup.sh;
  ./spack_setup.sh
  ./slurm_login_setup.sh;
  ./mpi_setup.sh;
  exit;
EOF

ssh scc135-cpu23 << EOF
  cd ~
  scp -r setup rocky@hostname:/nfs/general/resources/setup
  cd setup; 
  ./cpu_nfs_setup.sh <login_ip>;
  ./aocc_setup.sh;
  ./spack_setup.sh
  ./slurm_login_setup.sh;
  ./mpi_setup.sh;
  exit;
EOF

ssh scc135-cpu24 << EOF
  cd ~
  scp -r setup rocky@hostname:/nfs/general/resources/setup
  cd setup; 
  ./cpu_nfs_setup.sh <login_ip>;
  ./aocc_setup.sh;
  ./spack_setup.sh
  ./slurm_login_setup.sh;
  ./mpi_setup.sh;
  exit;
EOF

ssh scc135-cpu25 << EOF
  cd ~
  scp -r setup rocky@hostname:/nfs/general/resources/setup
  cd setup; 
  ./cpu_nfs_setup.sh <login_ip>;
  ./aocc_setup.sh;
  ./spack_setup.sh
  ./slurm_login_setup.sh;
  ./mpi_setup.sh;
  exit;
EOF

ssh scc135-cpu26 << EOF
  cd ~
  scp -r setup rocky@hostname:/nfs/general/resources/setup
  cd setup; 
  ./cpu_nfs_setup.sh <login_ip>;
  ./aocc_setup.sh;
  ./spack_setup.sh
  ./slurm_login_setup.sh;
  ./mpi_setup.sh;
  exit;
EOF

ssh scc135-cpu27 << EOF
  cd ~
  scp -r setup rocky@hostname:/nfs/general/resources/setup
  cd setup; 
  ./cpu_nfs_setup.sh <login_ip>;
  ./aocc_setup.sh;
  ./spack_setup.sh
  ./slurm_login_setup.sh;
  ./mpi_setup.sh;
  exit;
EOF

ssh scc135-cpu28 << EOF
  cd ~
  scp -r setup rocky@hostname:/nfs/general/resources/setup
  cd setup; 
  ./cpu_nfs_setup.sh <login_ip>;
  ./aocc_setup.sh;
  ./spack_setup.sh
  ./slurm_login_setup.sh;
  ./mpi_setup.sh;
  exit;
EOF

ssh scc135-cpu29 << EOF
  cd ~
  scp -r setup rocky@hostname:/nfs/general/resources/setup
  cd setup; 
  ./cpu_nfs_setup.sh <login_ip>;
  ./aocc_setup.sh;
  ./spack_setup.sh
  ./slurm_login_setup.sh;
  ./mpi_setup.sh;
  exit;
EOF

