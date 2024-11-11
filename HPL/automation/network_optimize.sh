#!/usr/bin/env bash
set -e

sudo touch /etc/sysctl.d/10-netdev_budget.conf

sudo echo -e "net.core.netdev_budget = 600\n net.core.netdev_budget_usecs = 4000" >> /etc/sysctl.d/10-netdev_budget.conf

sudo sysctl -p /etc/sysctl.d/10-netdev_budget.conf

sudo sysctl -w net.ipv4.tcp_congestion_control=cubic
sudo sysctl -w net.core.rmem_max=1048576
sudo sysctl -w net.core.wmem_max=1048576
sudo sysctl -w net.ipv4.tcp_rmem='16777216 16777216 16777216'
sudo sysctl -w net.ipv4.tcp_wmem='16777216 16777216 16777216'
sudo sysctl -w net.core.netdev_max_backlog=25000
sudo sysctl -w net.ipv4.tcp_low_latency=1
sudo sysctl -w net.ipv4.tcp_fin_timeout=10
sudo sysctl -w net.ipv4.tcp_max_tw_buckets=450000
sudo sysctl -w net.ipv4.tcp_window_scaling=1