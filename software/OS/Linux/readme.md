# Linux


## Upgrade
* [​How to Upgrade Debian 9 Stretch to Debian 10 Buster](https://linuxize.com/post/how-to-upgrade-debian-9-stretch-to-debian-10-buster/)
* [​How to Upgrade Debian 10 Buster to Debian 11 Bullseye](https://linuxize.com/post/how-to-upgrade-debian-10-to-debian-11/)
* [Upgrading to Debian 12 from Debian 11: A Step-by-Step Guide](https://linuxiac.com/how-to-upgrade-to-debian-12-from-debian-11/)


### Encryption  
[How to Generate a Strong Pre-shared Key on Linux](https://vitux.com/how-to-generate-a-strong-pre-shared-key-on-linux/)  

### Etc

* [How to reboot Debian using the command line](https://vitux.com/how-to-reboot-debian-using-the-command-line/)  
* [Check current time in Linux](https://www.howtouselinux.com/post/linux-command-check-the-current-time)
* [How to access a host port (bind with ssh -R) from a container?](https://stackoverflow.com/questions/39720341/how-to-access-a-host-port-bind-with-ssh-r-from-a-container)
* [How to install PostgreSQL on Debian 11](https://linuxhint.com/install-postgresql-debian/)
* [How to Add User to Sudoers in Debian](https://linuxize.com/post/how-to-add-user-to-sudoers-in-debian/)
* [How to Check for Open Ports on Debian 11](https://vitux.com/find-open-ports-on-debian/)
* [How to Check Linux Version](https://linuxize.com/post/how-to-check-linux-version/)
* [What Is the Linux /etc/shadow File and What Does It Do?](https://www.makeuseof.com/etc-shadow-file-linux/)
* [How To Decrypt Passwords In Linux](https://www.systranbox.com/how-to-decrypt-passwords-in-linux/)
* [How To View Linux Passwords In The /etc/shadow File](https://www.systranbox.com/how-to-view-linux-passwords-in-the-etc-shadow-file/)
* [How to install Nginx on Debian 12](https://linuxcapable.com/how-to-install-nginx-on-debian-linux/)



### GUI
* [Webmin](https://webmin.com/)  Server Managment tool
* [Cockpit](https://cockpit-project.org/)
* [Virtualmin](https://www.virtualmin.com/) Built on Webmin, website tool.

### KVM
* https://www.linux-kvm.org/page/Management_Tools

### Debian network
Set DNS
```bash
sudo nano /etc/systemd/resolved.conf
[Resolve]
DNS=192.168.1.1
Domains=~example.com
sudo systemctl restart systemd-resolved
resolvectl status
```

