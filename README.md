# Automation Scripts
Various usefull scripts with varying purposes


## Install_oh-my-zsh
This script will do a system-wide install of oh-my-zsh.

This will be made by installing oh-my-zsh for the root user and then copying oh-my-zsh files in the home of all users and in the home template folder, making them present for all future users.
It will also set oh-my-zsh as the default shell for all current and future user.
The script also set a kali-like theme for all users because it's the theme I prefer. Feel free to set your own.

You can run this script by running
```bash
curl https://raw.githubusercontent.com/TheWizard012631/automation-scripts/refs/heads/main/install_oh-my-zsh.sh | sh
```
OR
```bash
curl https://oh-my-zsh.northsex.ca | sh
```
⚠ This script will only work on debian-based distros due to the use of apt ⚠


## Linux-recyclebin
This script will install the trash-cli package and change the rm and rmdir commands for the trash command
The rm and rmdir commands will still be available as unsafe-rm and unsafe-rmdir

You can run this script by running 
```bash
curl https://raw.githubusercontent.com/TheWizard012631/automation-scripts/refs/heads/main/linux-recyclebin.sh | sh
```
OR
```bash
curl https://linux-recycle.northsex.ca | sh
```
⚠ This script will only work on debian-based distros due to the use of apt ⚠
