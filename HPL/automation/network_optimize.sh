#!/usr/bin/env bash
set -e

sudo sysctl -w net.ipv4.tcp_congestion_control=cubic
sudo sysctl -w net.core.rmem_max=16777216
sudo sysctl -w net.core.wmem_max=16777216
sudo sysctl -w net.core.rmem_default=16777216
sudo sysctl -w net.core.wmem_default=16777216
sudo sysctl -w net.ipv4.tcp_rmem='4096 87380 16777216'
sudo sysctl -w net.ipv4.tcp_wmem='4096 65536 16777216'
sudo sysctl -w net.core.netdev_max_backlog=30000
sudo sysctl -w net.ipv4.tcp_mem='16777216 16777216 16777216'
sudo sysctl -w net.ipv4.tcp_low_latency=1
sudo sysctl -w net.ipv4.tcp_fin_timeout=10
sudo sysctl -w net.ipv4.tcp_max_tw_buckets=450000
sudo sysctl -w net.ipv4.tcp_window_scaling=1

sudo nano /etc/sysctl.d/10-netdev_budget.conf

net.core.netdev_budget = 600
net.core.netdev_budget_usecs = 4000

sudo sysctl -p /etc/sysctl.d/10-netdev_budget.conf