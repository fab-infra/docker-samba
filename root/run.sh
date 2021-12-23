#!/bin/sh -e

# Set default environment
export SMB_HOSTS_ALLOW="${SMB_HOSTS_ALLOW:-127.0. 192.168.0.}"
export SMB_SHARES="${SMB_SHARES:-}"
export SMB_USER="${SMB_USER:-smbuser}"
export SMB_WORKGROUP="${SMB_WORKGROUP:-WORKGROUP}"

# Generate configuration
confd -onetime -backend env

# Create user
useradd "$SMB_USER"
echo -e "${SMB_PASSWORD:-$SMB_USER}\n${SMB_PASSWORD:-$SMB_USER}" | smbpasswd -L -D 1 -s -a "$SMB_USER"

# Configure shutdown handler
trap 'kill $PID' SIGINT SIGTERM

# Start Samba
/usr/sbin/smbd --foreground --log-stdout --no-process-group &
PID=$!

# Wait for shutdown
wait $PID
