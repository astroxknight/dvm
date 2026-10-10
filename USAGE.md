# Usage

## Create a VM

```bash
dvm       # Create a VM with an automatic name
dvm lab   # Create a VM named lab
```

Each VM has its own disk and SSH port. Port allocation starts at `2226` when available.

## Reconnect

```bash
dvm-ssh lab
```

Reconnects to a running VM named `lab`. The VM must still be running.

## List and Delete VMs

```bash
dvm-shred --list       # List VMs
dvm-shred lab          # Delete the lab VM
dvm-shred --all        # Delete all VMs after confirmation
dvm-shred --all --yes  # Delete all VMs without confirmation
```

**Warning:** Deleting a VM permanently removes its disk and data. The cached Ubuntu base image is kept.

## Inside Ubuntu

```bash
sudo apt update    # Update package lists
sudo apt upgrade   # Upgrade installed packages
sudo reboot        # Restart the VM
sudo poweroff      # Shut down the VM
exit               # Disconnect SSH
```

## Typical Workflow

```bash
dvm lab
```

Do your work inside Ubuntu, then run `exit` to disconnect. The VM continues running, so you can reconnect later:

```bash
dvm-ssh lab
```

When you're finished with the VM, delete it:

```bash
dvm-shred lab
```
