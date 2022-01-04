# reactos-startup

A simple script file to automatically setup a ReactOS system with the default characteristics:

- 2 CPU cores
- Storage Size: 1024MiB
- Memory size: 1024MiB

## Tips

- You can edit the script file "startup.sh" and change some variables like that

```bash

# Image filename
IMAGE="ReactOS-0.4.14.iso"

# Storage filename
STORAGE="ROSdisk.qcow2"

# Storage size
STORAGE_SIZE="1024M"

# Memory size for the VM
SYS_RAM="1024"
```
