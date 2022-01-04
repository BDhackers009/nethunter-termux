
This is a modified version of Offcial kali nethunter.
With it you can setup a minimal version of nethunter.

# Installation
To install Nethunter-Termux Minimal version copy below command and paste in ur termux

1st things you shoud update and upgrade Termux by
```
apt update && apt upgrade -y 
```
Or
```
pkg up -y
```
After upgrading termux type below command 

```
curl -L https://git.io/JiZwx | bash 
```
# Login 

After Installing Kali Linux type below command to login into KaliLinux as a root user

```
proot-distro login kali --bind /dev/null:/proc/sys/kernel/cap_last_last --shared-tmp
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

After successfully creating user you can simply login to non-root user by below👇 command

```
proot-distro login kali --user [username]   --bind /dev/null:/proc/sys/kernel/cap_last_last --shared-tmp
```

replace [username] to ur username and dont forget to remove the brackets.

Do not forget to update && upgrade kali:

```
sudo apt update && apt upgrade -y
```
After doing update and upgrade you can simply use almost any tools in kali linux.
But do not forget that you cannot access any of your hardware accessories such as WiFi. Which means you dont have to try running wifi hacking tools etc😂😂.
But you can use any tool which is not require real root permission 🙂


#Enjoy...
 
