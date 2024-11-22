#!/bin/bash

check_open_ports() {
    echo "Checking for open ports..."
    ss -tuln | awk 'NR>1 {print $5, $1, $4}' | sed 's/:::/0.0.0.0/g' | sed 's/\[::\]/0.0.0.0/g' | sed 's/:/ /g'
    echo
}

check_logged_in_users() {
    echo "Current logged in users:"
    who | awk '{print $1, $2, $3, $5}'
    echo
}

check_ssh_connections() {
    echo "Checking established SSH connections..."
    ss -t -a | grep 'ssh' | grep ESTAB | awk '{print $5, $6, $1}' | sed 's/:::/0.0.0.0/g' | sed 's/\[::\]/0.0.0.0/g' | sed 's/:/ /g'
    echo
}

check_system_logs() {
    echo "Checking system logs..."
    grep "sshd" /var/log/auth.log | awk '{print $1, $2, $3, $9, $11}' | sed 's/:::/0.0.0.0/g' | sed 's/\[::\]/0.0.0.0/g'
    echo
}

# Run functions
check_open_ports
check_logged_in_users
check_ssh_connections
check_system_logs

