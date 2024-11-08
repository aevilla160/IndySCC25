#!/usr/bin/env bash
set -e

sudo dnf update -y
sudo dnf install nfs-utils -y

cd /

sudo mkdir /nfs/general/resources/setup -p
sudo mkdir /nfs/general/logs/iperf -p
sudo mkdir /nfs/general/tests
sudo mkdir /nfs/general/slurm
sudo mkdir /nfs/general/mpi

sudo chown -R rocky:rocky /nfs/general

sudo tee -a /etc/exports << END
/nfs/general        <cpu0_ip>(rw,sync,no_subtree_check)
/home               <cpu0_ip>(rw,sync,no_root_squash,no_subtree_check)
/nfs/general        <cpu1_ip>(rw,sync,no_subtree_check)
/home               <cpu1_ip>(rw,sync,no_root_squash,no_subtree_check)
/nfs/general        <cpu2_ip>(rw,sync,no_subtree_check)
/home               <cpu2_ip>(rw,sync,no_root_squash,no_subtree_check)
/nfs/general        <cpu3_ip>(rw,sync,no_subtree_check)
/home               <cpu3_ip>(rw,sync,no_root_squash,no_subtree_check)
/nfs/general        <cpu4_ip>(rw,sync,no_subtree_check)
/home               <cpu4_ip>(rw,sync,no_root_squash,no_subtree_check)
/nfs/general        <cpu5_ip>(rw,sync,no_subtree_check)
/home               <cpu5_ip>(rw,sync,no_root_squash,no_subtree_check)
/nfs/general        <cpu6_ip>(rw,sync,no_subtree_check)
/home               <cpu6_ip>(rw,sync,no_root_squash,no_subtree_check)
/nfs/general        <cpu7_ip>(rw,sync,no_subtree_check)
/home               <cpu7_ip>(rw,sync,no_root_squash,no_subtree_check)
/nfs/general        <cpu8_ip>(rw,sync,no_subtree_check)
/home               <cpu8_ip>(rw,sync,no_root_squash,no_subtree_check)
/nfs/general        <cpu9_ip>(rw,sync,no_subtree_check)
/home               <cpu9_ip>(rw,sync,no_root_squash,no_subtree_check)
/nfs/general        <cpu10_ip>(rw,sync,no_subtree_check)
/home               <cpu10_ip>(rw,sync,no_root_squash,no_subtree_check)
/nfs/general        <cpu11_ip>(rw,sync,no_subtree_check)
/home               <cpu11_ip>(rw,sync,no_root_squash,no_subtree_check)
/nfs/general        <cpu12_ip>(rw,sync,no_subtree_check)
/home               <cpu12_ip>(rw,sync,no_root_squash,no_subtree_check)
/nfs/general        <cpu13_ip>(rw,sync,no_subtree_check)
/home               <cpu13_ip>(rw,sync,no_root_squash,no_subtree_check)
/nfs/general        <cpu14_ip>(rw,sync,no_subtree_check)
/home               <cpu14_ip>(rw,sync,no_root_squash,no_subtree_check)
/nfs/general        <cpu15_ip>(rw,sync,no_subtree_check)
/home               <cpu15_ip>(rw,sync,no_root_squash,no_subtree_check)
/nfs/general        <cpu16_ip>(rw,sync,no_subtree_check)
/home               <cpu16_ip>(rw,sync,no_root_squash,no_subtree_check)
/nfs/general        <cpu17_ip>(rw,sync,no_subtree_check)
/home               <cpu17_ip>(rw,sync,no_root_squash,no_subtree_check)
/nfs/general        <cpu18_ip>(rw,sync,no_subtree_check)
/home               <cpu18_ip>(rw,sync,no_root_squash,no_subtree_check)
/nfs/general        <cpu19_ip>(rw,sync,no_subtree_check)
/home               <cpu19_ip>(rw,sync,no_root_squash,no_subtree_check)
/nfs/general        <cpu20_ip>(rw,sync,no_subtree_check)
/home               <cpu20_ip>(rw,sync,no_root_squash,no_subtree_check)
/nfs/general        <cpu21_ip>(rw,sync,no_subtree_check)
/home               <cpu21_ip>(rw,sync,no_root_squash,no_subtree_check)
/nfs/general        <cpu22_ip>(rw,sync,no_subtree_check)
/home               <cpu22_ip>(rw,sync,no_root_squash,no_subtree_check)
/nfs/general        <cpu23_ip>(rw,sync,no_subtree_check)
/home               <cpu23_ip>(rw,sync,no_root_squash,no_subtree_check)
/nfs/general        <cpu24_ip>(rw,sync,no_subtree_check)
/home               <cpu24_ip>(rw,sync,no_root_squash,no_subtree_check)
/nfs/general        <cpu25_ip>(rw,sync,no_subtree_check)
/home               <cpu25_ip>(rw,sync,no_root_squash,no_subtree_check)
/nfs/general        <cpu26_ip>(rw,sync,no_subtree_check)
/home               <cpu26_ip>(rw,sync,no_root_squash,no_subtree_check)
/nfs/general        <cpu27_ip>(rw,sync,no_subtree_check)
/home               <cpu27_ip>(rw,sync,no_root_squash,no_subtree_check)
/nfs/general        <cpu28_ip>(rw,sync,no_subtree_check)
/home               <cpu28_ip>(rw,sync,no_root_squash,no_subtree_check)
/nfs/general        <cpu29_ip>(rw,sync,no_subtree_check)
/home               <cpu29_ip>(rw,sync,no_root_squash,no_subtree_check)
END

sudo systemctl restart nfs-server
sudo systemctl status nfs-server

firewall-cmd --permanent --add-service=nfs
firewall-cmd --permanent --add-service=mountd
firewall-cmd --permanent --add-service=rpc-bind
firewall-cmd --reload

