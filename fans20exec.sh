#!/bin/bash

# This puts the script to power the fans at 20%  in the proper directory.
# The systemd unit will call it from here.

cat > /usr/bin/ipmitool.sh << "EOF"
#!/bin/bash

# takes manual control of the fans
ipmitool raw 0x30 0x30 0x01 0x00

# sets the fans to 20%
ipmitool raw 0x30 0x30 0x02 0xff 0x14
EOF

# Give the script the proper permissions
chown root:root /usr/bin/ipmitool.sh
chmod +x /usr/bin/ipmitool.sh
