# Dell-PowerEdge-ipmitool

These scripts create a systemd unit and a script to make a Dell PowerEdge's fans always run at 20%

This script requires the package ipmitool

To install ipmitool on your PowerEdge, use your package manager.
  
  for example:
  
    [fedora]
    sudo dnf install ipmitool
    
    [opensuse]
    sudo zypper install ipmitool
    
    [debian-based distros]
    sudo apt install ipmitool
    
These scripts need to be run as the root user. You can -

    su - root

or

    sudo bash
    
First run fans20exec.sh - it puts the script to power the fans at 20% in
  the directory that systemd looks for unit files.
 
Then run fans20service.sh - it puts the systemd unit file in the proper place.
