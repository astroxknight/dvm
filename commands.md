## 1. `dvm` — Create and start a VM

| Command    | What it does                                                             |
| ---------- | ------------------------------------------------------------------------ |
| `dvm`      | Creates a VM with an automatically generated name and connects over SSH. |
| `dvm lab`  | Creates a VM named `lab` and connects to it.                             |
| `dvm test` | Creates a VM named `test` and connects to it.                            |

Each new instance gets its own disk, SSH configuration and port, starting from port `2226` when available.

## 2. `dvm-ssh` — Reconnect to a running VM

| Command                         | What it does                                           |
| ------------------------------- | ------------------------------------------------------ |
| `dvm-ssh lab`                   | Reconnects to the VM named `lab`.                      |
| `dvm-ssh test`                  | Reconnects to the VM named `test`.                     |
| `dvm-ssh u-1010-211146-2231529` | Reconnects to your existing VM using its current name. |

This helper works if you've created the `dvm-ssh` script from our earlier instructions. The VM must still be running.

## 3. `dvm-shred` — Manage and destroy VMs

| Command                 | What it does                                                                 |
| ----------------------- | ---------------------------------------------------------------------------- |
| `dvm-shred --list`      | Lists managed VMs, their ports and running status.                           |
| `dvm-shred lab`         | Stops and deletes the VM named `lab`, including its disk and instance files. |
| `dvm-shred test`        | Stops and deletes the VM named `test`.                                       |
| `dvm-shred --all`       | Asks for confirmation, then destroys all managed VMs.                        |
| `dvm-shred --all --yes` | Destroys all managed VMs without confirmation.                               |

Warning: Destruction permanently deletes the selected VM's virtual disk and its data. It does not delete the cached Ubuntu base image.

## 4. Commands inside the Ubuntu VM

Once connected over SSH, you can use normal Ubuntu commands.

| Command            | What it does                                           |
| ------------------ | ------------------------------------------------------ |
| `sudo apt update`  | Refreshes package lists.                               |
| `sudo apt upgrade` | Upgrades installed packages.                           |
| `sudo reboot`      | Restarts the VM.                                       |
| `sudo poweroff`    | Shuts down the VM.                                     |
| `exit`             | Disconnects SSH without intentionally stopping the VM. |

## 5. Your everyday workflow

For example, to create and use a disposable VM named `lab`:

```
dvm lab
```

Inside Ubuntu, do your work. When finished, type `exit`.

Later, on Arch:

```
dvm-ssh lab
```

When you no longer need that VM:

```
dvm-shred lab
```

To check which VMs remain:

```
dvm-shred --list
```

