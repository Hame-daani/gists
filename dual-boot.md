
# Auto-Mount Your Storage Partition (Linux)

We need to install ntfs-3g, the driver Linux will use to read and write to NTFS.
```bash
sudo apt-get install ntfs-3g
```
Next, let’s create the directory where your partition will mount.
``` bash
sudo mkdir /media/storage
```
Now, it’s time to edit the fstab file.  First, we’ll create a backup, just in case anything happens.
``` bash
sudo cp /etc/fstab /etc/fstab.backup
```
Next, you need to find what the UUID of your storage partition is.
``` bash
sudo blkid
```
now we edit fstab
``` bash
gedit admin:///etc/fstab
```
Add the following lines to the bottom of fstab
```
# storage mount
UUID=8E98DD0498DCEC29 /mnt/storage/ ntfs-3g defaults,auto,uid=1000,gid=1000,umask=002 0 0
```
When you’re ready, click save and then reboot. 

# Configure Your Subfolders (Linux)

This is the file where your “special” folders in your home directory are defined.
```bash
gedit .config/user-dirs.dirs
```
In place of where you see **“$HOME/Downloads”** you would put in an absolute folder location, like **“/media/storage/Downloads”**.

use **ctrl+shift and drag** to create symlinks.

# Read-only probelm
Log into windows, open CMD:
```bash
powercfg -h off
```
[source](https://www.howtogeek.com/howto/35807/how-to-harmonize-your-dual-boot-setup-for-windows-and-ubuntu/)
