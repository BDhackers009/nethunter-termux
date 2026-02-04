
# Introduction

This is a modified version of Kali Nethunter. This project was created to provide a very minimal and working nethunter environment. This project is only for non rooted users.

# Changelog
* Upgraded the tarballs to 2025-12-11.
* Upgraded the Kali Linux Version to 2025.4

# Features

 * Requires only 1.25 GB of storage.
 * Requires only 170 MB of internet data.
 * Very easy to use.
 * User creation script so you don't have to do it manually.
 * Ready to jump into bug hunting or ethical hacking.
 * Supports arm64/aarch64, amd64, i386, and arm/armhf.
 * Doesn't require a rooted device. Fully runs on non-rooted devices.

# Installation
To install the Nethunter-Termux minimal version, copy the command below and paste it in your Termux terminal.

First, you should update and upgrade Termux by running:
```
apt update && apt upgrade -y 
```
Or
```
pkg up -y
```
After upgrading Termux, type the command below to download and install Kali Nethunter: 

```
bash -c "$(curl -fsSL https://git.io/JiZwx)"
```

OR


```
curl -sL https://git.io/JiZwx -o nethunter_install.sh

bash nethunter_install.sh
```
# Login 

After installing Kali Linux, type the command below to login to Kali Linux as the root user:

```
kali
```
# User Creation

After logging into Kali Linux, you can find the 'user.sh' file in your HOME directory.
The default HOME directory for root is /root.

First, go to the HOME folder by running: 
```
cd /root
```

Then run the user.sh script using the command below:

```
bash user.sh
```

After successfully creating a user, you can simply login as a non-root user from Termux by using the command below:

```
kali --user [username]
```

Replace [username] with your username and don't forget to remove the brackets.

Do not forget to update && upgrade kali:

```
sudo apt update && apt upgrade -y
```
After updating and upgrading, you can use almost any tool in Kali Linux.

# Video Tutorials:-

https://youtu.be/89e1o8z7wr0

# Issues

__**Issue-01:-**__
![issue01](https://github.com/BDhackers009/fixpip3/blob/main/issue.png?raw=true)

__**FIX-01:-**__
Currently, Kali Nethunter has this problem with pip. It's not our problem; it's an issue with the platformdirs utility. However, you can fix [this](https://github.com/BDhackers009/fixpip3/blob/main/issue.png?raw=true) error via this [link](https://github.com/BDhackers009/fixpip3). This problem will be resolved in the next update of platformdirs.

## Thanks to

[proot-distro](https://github.com/termux/proot-distro)

## Maintainers
[**Mustakim Ahmed Sifat**](https://github.com/BDhaCKers009)

# Disclaimer
Please note that you cannot access any of your hardware accessories such as WiFi. This means you shouldn't try running WiFi hacking tools, etc.
However, you can use any tool that doesn't require real root permissions.


### If you like this project, don't forget to give it a star! ⭐
 
