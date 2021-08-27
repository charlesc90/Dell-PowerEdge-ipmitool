#!/bin/bash

# This puts the systemd unit in the proper place.

cat > /etc/systemd/user/fans20.service << "EOF"
[Unit]
Description=Fans 20
StartLimitIntervalSec=0

[Service]
Type=simple
ExecStart=/bin/bash /usr/bin/ipmitool.sh

[Install]
WantedBy=multi-user.target
EOF
