
# Introduction

This is a modified version of Kali Nethunter. This project was created to provide a very minimal distribution.

# Features

 * Needed just 1.25 of storage.
 * Needed just 160 MB of Internet.
 * Very Easy to use.
 * Zsh as a default shell.
 * User creation script so that you dont have to do it manually.
 * Ready to jump into Bug Hunting or Ethical Hacking.
 * Supports arm64 and arm both.
 * Don't need to have a rooted device. Fully run with non-rooted device.

# Installation
To install Nethunter-Termux Minimal version copy below command and paste in ur termux

1st things you should update and upgrade Termux by
```
apt update && apt upgrade -y 
```
Or
```
pkg up -y
```
After upgrading termux type below command 

```
curl -sL https://git.io/JiZwx | bash 
```
# Login 

After Installing Kali Linux type below command to login into Kali Linux as a root user

```
kali
```
# User creation

After login to Kali linux you can find 'user.sh' file in your HOME directory.
The default HOME directory of root is /root.

1st go to HOME folder by 
```
cd /root
```

Then run the user.sh script using below👇 command

```
bash user.sh
```

After successfully creating user you can simply login to non-root user from Termux by using below👇 command

```
kali [username]
```

replace [username] to ur username and dont forget to remove the brackets.

Do not forget to update && upgrade kali:

```
sudo apt update && apt upgrade -y
```
After doing update and upgrade you can simply use almost any tools in kali linux.

# Video Tutorials:-

**Comming Soon..**

# Issues

__**Issue-01:-**__
![issue01](https://github.com/BDhackers009/fixpip3/blob/main/issue.png?raw=true)

__**FIX-01:-**__
Now-a-days the kali nethunter has this problem with pip. It's not our problem its a problem of platformdirs utility. However you can fix [this](https://github.com/BDhackers009/fixpip3/blob/main/issue.png?raw=true) error via this [Link](https://github.com/BDhackers009/fixpip3). This problem will be solved in the next update of platformdirs.

## Thanks to

[proot-distro](https://github.com/termux/proot-distro)

## Maintainers
[**Mustakim Ahmed Sifat**](https://github.com/BDhaCKers009)

# Disclaimer
Do not forget that you cannot access any of your hardware accessories such as WiFi. Which means you dont have to try running wifi hacking tools etc😂😂.
But you can use any tool which is not require real root permission 🙂


### If you like this project then dont forget to give a star :)
 
