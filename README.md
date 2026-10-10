# Disposable Ubuntu VM

A small tool to create and manage disposable Ubuntu VMs using QEMU/KVM. Made for practising Linux, networking and server administration without messing with my main system.

## Features
- Ubuntu 24.04 LTS
- SSH key authentication
- Automatic SSH port allocation
- Separate disk for each VM
- Reconnect to running VMs
- Easy cleanup of VMs and their data

## Usage
```bash
dvm lab                 # Create a VM
dvm-shred --list        # List VMs
dvm-ssh lab             # Reconnect
dvm-shred lab           # Delete a VM
```

## Requirements
- Linux host (tested on Arch Linux)
- QEMU/KVM
- SSH client and SSH key

## Purpose
A personal project to learn virtualization, Linux servers and system administration through practice.
