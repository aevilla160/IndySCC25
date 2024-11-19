#!/usr/bin/env bash

# Enable strict error handling
set -euo pipefail
IFS=$'\n\t'

# Script configuration
readonly BASE_HOSTNAME="scc135-cpu"
readonly USER="rocky"
readonly NFS_BASE="/nfs/general"
readonly SETUP_DIR="${NFS_BASE}/resources/setup"
readonly SCRIPTS_DIR="${SETUP_DIR}/scripts"
readonly LOG_DIR="${NFS_BASE}/logs"
readonly LOG_FILE="${LOG_DIR}/setup_$(date +%Y%m%d_%H%M%S).log"

# Function to log messages
log() {
    local timestamp
    timestamp=$(date '+%Y-%m-%d %H:%M:%S')
    echo "[${timestamp}] $*" | tee -a "${LOG_FILE}"
}

# Function to check if a command exists
command_exists() {
    command -v "$1" >/dev/null 2>&1
}

# Function to verify prerequisites
check_prerequisites() {
    local -a required_commands=("ssh" "scp" "sudo")
    
    for cmd in "${required_commands[@]}"; do
        if ! command_exists "$cmd"; then
            log "ERROR: Required command '${cmd}' not found"
            exit 1
        fi
    done
}

# Function to setup directories
setup_directories() {
    log "Creating necessary directories..."
    sudo mkdir -p "${SCRIPTS_DIR}" "${LOG_DIR}"
    sudo chmod 755 "${SCRIPTS_DIR}" "${LOG_DIR}"
}

# Function to copy setup files
copy_setup_files() {
    log "Copying setup files to NFS..."
    cd "/home/${USER}/IndySCC24/automation" || exit 1
    sudo cp -r ./* "${SCRIPTS_DIR}"
    cd "${SCRIPTS_DIR}" || exit 1
    sudo chmod +x ./*
}

# Function to setup login node
setup_login_node() {
    log "Setting up login node..."
    ./get_ips.sh "${NUM_HOSTS}" >> "${LOG_DIR}/ips.txt"
    ./login_nfs_setup.sh
    ./aocc_setup.sh
    ./spack_setup.sh
    # ./slurm_login_setup.sh
    # ./mpi_setup.sh
}

# Function to setup compute nodes
setup_compute_nodes() {
    log "Setting up compute nodes..."
    for i in $(seq 0 $((NUM_HOSTS-1))); do
        local hostname="${USER}@${BASE_HOSTNAME}${i}"
        log "Setting up node: ${hostname}"
        
        # Test SSH connection before attempting setup
        if ! ssh -o ConnectTimeout=10 -o StrictHostKeyChecking=no "${hostname}" "echo 'SSH connection successful'"; then
            log "ERROR: Cannot connect to ${hostname}"
            continue
        }
        
        ssh -o StrictHostKeyChecking=no "${hostname}" << EOF
            set -e
            echo "Setting up $(hostname)"
            sudo dnf update -y
            cd "${SETUP_DIR}"
            ./aocc_setup.sh
            ./spack_setup.sh
EOF
        
        if [ $? -eq 0 ]; then
            log "Successfully set up ${hostname}"
        else
            log "ERROR: Failed to set up ${hostname}"
        fi
    done
}

# Main execution
main() {
    # Verify argument count
    if [ $# -ne 1 ]; then
        echo "Error: Please provide the number of hosts to set up"
        echo "Usage: $0 <number_of_hosts>"
        exit 1
    fi

    # Store and validate the argument
    NUM_HOSTS=$1
    if ! [[ "${NUM_HOSTS}" =~ ^[0-9]+$ ]]; then
        echo "Error: Number of hosts must be a positive integer"
        exit 1
    fi

    log "Starting cluster setup for ${NUM_HOSTS} hosts"
    
    # Run setup steps
    check_prerequisites
    setup_directories
    copy_setup_files
    setup_login_node
    setup_compute_nodes
    
    log "Cluster setup completed"
}

main "$@"