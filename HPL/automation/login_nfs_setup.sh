#!/usr/bin/env bash
set -e

sudo dnf update -y
sudo dnf install nfs-utils -y

cd /

sudo mkdir /nfs/general/resources/setup -p
sudo mkdir /nfs/general/logs/iperf -p
sudo mkdir /nfs/general/tests
sudo mkdir /nfs/general/slurm/munge -p
sudo mkdir /nfs/general/mpi
sudo mkdir /nfs/general/hpl/amd -p
sudo mkdir /nfs/general/icon

sudo chown -R rocky:rocky /nfs/general

sudo tee -a /etc/exports << END
/nfs/general        10.0.225.192(rw,sync,no_subtree_check)
/home               10.0.225.192(rw,sync,no_root_squash,no_subtree_check)
/nfs/general        10.0.225.198(rw,sync,no_subtree_check)
/home               10.0.225.198(rw,sync,no_root_squash,no_subtree_check)
/nfs/general        10.0.225.131(rw,sync,no_subtree_check)
/home               10.0.225.131(rw,sync,no_root_squash,no_subtree_check)
/nfs/general        10.0.225.17(rw,sync,no_subtree_check)
/home               10.0.225.17(rw,sync,no_root_squash,no_subtree_check)
/nfs/general        10.0.225.107(rw,sync,no_subtree_check)
/home               10.0.225.107(rw,sync,no_root_squash,no_subtree_check)
/nfs/general        10.0.225.75(rw,sync,no_subtree_check)
/home               10.0.225.75(rw,sync,no_root_squash,no_subtree_check)
/nfs/general        10.0.225.84(rw,sync,no_subtree_check)
/home               10.0.225.84(rw,sync,no_root_squash,no_subtree_check)
/nfs/general        10.0.225.208(rw,sync,no_subtree_check)
/home               10.0.225.208(rw,sync,no_root_squash,no_subtree_check)
/nfs/general        10.0.225.247(rw,sync,no_subtree_check)
/home               10.0.225.247(rw,sync,no_root_squash,no_subtree_check)
/nfs/general        10.0.225.243(rw,sync,no_subtree_check)
/home               10.0.225.243(rw,sync,no_root_squash,no_subtree_check)
/nfs/general        10.0.225.124(rw,sync,no_subtree_check)
/home               10.0.225.124(rw,sync,no_root_squash,no_subtree_check)
/nfs/general        10.0.225.223(rw,sync,no_subtree_check)
/home               10.0.225.223(rw,sync,no_root_squash,no_subtree_check)
/nfs/general        10.0.225.161(rw,sync,no_subtree_check)
/home               10.0.225.161(rw,sync,no_root_squash,no_subtree_check)
/nfs/general        10.0.225.238(rw,sync,no_subtree_check)
/home               10.0.225.238(rw,sync,no_root_squash,no_subtree_check)
/nfs/general        10.0.225.70(rw,sync,no_subtree_check)
/home               10.0.225.70(rw,sync,no_root_squash,no_subtree_check)
/nfs/general        10.0.225.7(rw,sync,no_subtree_check)
/home               10.0.225.7(rw,sync,no_root_squash,no_subtree_check)
/nfs/general        10.0.225.190(rw,sync,no_subtree_check)
/home               10.0.225.190(rw,sync,no_root_squash,no_subtree_check)
/nfs/general        10.0.225.186(rw,sync,no_subtree_check)
/home               10.0.225.186(rw,sync,no_root_squash,no_subtree_check)
/nfs/general        10.0.225.79(rw,sync,no_subtree_check)
/home               10.0.225.79(rw,sync,no_root_squash,no_subtree_check)
/nfs/general        10.0.225.185(rw,sync,no_subtree_check)
/home               10.0.225.185(rw,sync,no_root_squash,no_subtree_check)
/nfs/general        10.0.225.203(rw,sync,no_subtree_check)
/home               10.0.225.203(rw,sync,no_root_squash,no_subtree_check)
/nfs/general        10.0.225.55(rw,sync,no_subtree_check)
/home               10.0.225.55(rw,sync,no_root_squash,no_subtree_check)
/nfs/general        10.0.225.12(rw,sync,no_subtree_check)
/home               10.0.225.12(rw,sync,no_root_squash,no_subtree_check)
/nfs/general        10.0.225.196(rw,sync,no_subtree_check)
/home               10.0.225.196(rw,sync,no_root_squash,no_subtree_check)
/nfs/general        10.0.225.120(rw,sync,no_subtree_check)
/home               10.0.225.120(rw,sync,no_root_squash,no_subtree_check)
/nfs/general        10.0.225.93(rw,sync,no_subtree_check)
/home               10.0.225.93(rw,sync,no_root_squash,no_subtree_check)
/nfs/general        10.0.225.13(rw,sync,no_subtree_check)
/home               10.0.225.13(rw,sync,no_root_squash,no_subtree_check)
/nfs/general        10.0.225.106(rw,sync,no_subtree_check)
/home               10.0.225.106(rw,sync,no_root_squash,no_subtree_check)
/nfs/general        10.0.225.61(rw,sync,no_subtree_check)
/home               10.0.225.61(rw,sync,no_root_squash,no_subtree_check)
/nfs/general        10.0.225.219(rw,sync,no_subtree_check)
/home               10.0.225.219(rw,sync,no_root_squash,no_subtree_check)
END

sudo systemctl restart nfs-server
sudo systemctl status nfs-server

