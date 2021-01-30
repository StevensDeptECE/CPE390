# 1. Setting Up Raspberry Pi For CPE-390

## 1.1. Table of Contents

- [1. Setting Up Raspberry Pi For CPE-390](#1-setting-up-raspberry-pi-for-cpe-390)
  - [1.1. Table of Contents](#11-table-of-contents)
  - [1.2. Getting Ready](#12-getting-ready)
  - [1.3. Installing the OS on the SD Card](#13-installing-the-os-on-the-sd-card)
  - [1.4. Setting up SSH](#14-setting-up-ssh)
  - [1.5. Letting your Pi connect to WiFi automatically](#15-letting-your-pi-connect-to-wifi-automatically)
  - [1.6. Turning on your Pi for the first time](#16-turning-on-your-pi-for-the-first-time)
  - [1.7. Some Basic Setup](#17-some-basic-setup)
  - [1.8. Setup SSH Keys on your Pi for GitHub](#18-setup-ssh-keys-on-your-pi-for-github)

## 1.2. Getting Ready

1. You must already have a Raspberry Pi, microSD Card of at least 8 GB Capacity, the required adapters (if any) to connect said microSD Card to your Computer, and a WiFi connection on which to use your Pi.
2. Get an account on [GitHub](https://github.com/). You should get a [student account](https://education.github.com/pack), which will give you GitHub pro and allow you to use GitHub actions for CI/CD, which you should learn on your own at some point.
3. Prepare to install the Raspberry Pi OS

   1. [Download `Raspberry Pi OS (32-bit) with desktop`](https://www.raspberrypi.org/downloads/raspberry-pi-os/). Unless you plan to use your Pi for word processing, the `... and recommended software` doubles the size of the OS
   2. Decompress the Zip File
   3. Download and install [Balena Etcher](https://www.balena.io/etcher/), a free utility that flashes images onto drives.

## 1.3. Installing the OS on the SD Card

1. Plug your MicroSD Card into your computer. If you are using a MicroSD card with an adapter (to SD), there is likely a grey tab on the left side of the adapter that controls writing to the card. It might have a lock icon next to it. Please push that tab to the unlock position (usually upward). If it is inserted with the tab in the locked position, it will allow you to read files but not write to the card (I think to prevent photographers from accidentally deleting photos). 
2. Open Balena Etcher
3. Click `Flash from file`
4. Select the decompressed file
5. Select target as your microSD. VERIFY THAT THE CAPACITY OF THE MICROSD MATCHES WHAT YOU SEE ON SCREEN (minus a bit, because [drive manufacturers like to be cheap](https://www.lifewire.com/drive-storage-capacities-833435)). I AM NOT RESPONSIBLE FOR YOUR UNINTENTIONALLY OVERWRITING DATA.
6. Hit `Flash!` . This process will take ~30 minutes or less depending on your card, the speed of the adapter/interface between your computer and the card, etc.
7. At the end of flashing, Balena may complain that the checksums didn't match. If you get this error, it's probably nothing to worry about, but if you want to be sure, try flashing the card again. If this happens again, just ignore it and move on.
8. Balena will probably have ejected your card, so disconnect your adapter, and plug it back in.

## 1.4. Setting up SSH

1. Open Windows File Explorer.
2. Click on the `View` tab (at the top), then `File name extensions` in the `Show/hide` area on the right side of the top-bar.
3. Navigate to the SD card.
4. Right Click on the empty space and click on `New` >> `Text Document`
    1. Notice how `.txt` is prefilled. Make the name `SSH` without the `.txt` on the end.
    2. Windows will alert you that `If you change a file name extension, the file might become unusable. Are you sure you want to change it?` . Hit `Yes` .

## 1.5. Letting your Pi connect to WiFi automatically

1. Open the Windows File Explorer.
2. Navigate to the SD Card.
3. Right Click on the empty space and click on `New` >> `Text Document`
   1. Name the file `wpa_supplicant.conf` exactly.
   2. Open the file with your favorite text editor (Windows Notepad works for this).
   3. Replace the contents with [wpa_supplicant.conf](res/Setting%20Up%20Raspberry%20Pi%20For%20CPE-390/wpa_supplicant.conf), replacing the `WIFI_NETWORK_NAME` and `WIFI_PASSWORD` with your own. (Please note that spaces are allowed and shouldn't be replaced with underscores. Underscores make text easier to select)
   4. Save the file

## 1.6. Turning on your Pi for the first time

1. Place the MicroSD card into the slot in the Pi under the board, with the contacts facing towards the PCB.
2. If you are planning to use your Pi with a monitor (not required), connect HDMI and a USB keyboard (and mouse, again not required)
3. Connect your Pi to a power source. Make sure it is a stable power source because disconnecting your Pi during boot/shutdown (especially the first boot) is likely going to corrupt the data on the SD Card. If this happens, you will need to re-flash the SD Card.
4. If you are using your Pi with a monitor, you will see the Pi boot up and login automatically. Open a terminal using `ctrl` + `shift` + `T`
5. If you are using your Pi without a monitor, you will see the green light blink a bunch and then eventually stop blinking as much. This indicates that the Pi has booted up and is essentially doing nothing.

   1. Open your computer and get on the same WiFi as your Pi. 
   2. Download [Advanced Port Scanner](https://www.advanced-port-scanner.com/) if on Windows. Other OSes, download a port scanner, or use a built-in port scanner.
   3. You can use this port scanner without installing to your machine. Run the installer and select `Run` instead of `Install` when possible.
   4. When the program loads, hit the blue `IP` button, then `Scan`
   5. This Port Scanner will show all the devices on the network. If you have a lot of devices, this may take a few minutes to run. While you're waiting, look at the list of devices. If you see devices you don't recognize, you may want to consider banning them from your router's configuration/settings page. Also note that if you have WiFi extenders or smart devices, they may have strange names.
   6. One of the devices in the list should be named `raspberrypi` with Manufacturer `Raspberry Pi Foundation` . If not, wait for a few minutes and run the scan again. If it still fails to appear, your WiFi Configuration file was incorrect, go back to [Installing the OS on the SD Card](#installing-the-os-on-the-sd-card).
   7. Note the IP Address of the Pi.
   8. Open a Command Prompt window (CMD) or Terminal, depending on your OS. Run `ssh pi@IP_ADDR_HERE -p 22` for Windows. `ssh pi@IP_ADDR_HERE:22` for Linux/Mac.

      1. Since it is your first time connecting, it will ask if you want to verify the signature and continue connecting, just say yes. The purpose of this is to prevent man-in-the-middle (MITM) attacks, and ensure the machine you're trying to connect to is the one you really mean to connect to.
      2. Your password is `raspberry`

## 1.7. Some Basic Setup

1. Change your password: especially SSH users. There are well established default password lists that hackers use to try to gain access to machines. Although your Pi does not and likely will not contain sensitive information, it can act as a stepping stone to accessing other devices on your network.

   1. Run `passwd`
      1. The first input is your current password: `raspberry`
      2. Enter a new password
      3. Confirm the new password

   2. Side-note: After you setup your github key, I highly recommend using `ssh-copy-id` to setup a login ssh key between your computer and your pi and then disabling ssh login using a password as key-based login is infinitely more secure, faster, and convenient. If you ever lose your SSH key (from reinstalling OS/etc), you can easily plug your Pi into a monitor and re-enable password login or just reflash the SD Card to fix the ssh-key problem.

2. Update the software on the Pi, run: `sudo apt update -y && sudo apt full-upgrade -y` . It will ask for your password.
3. Install a few basic required packages: `sudo apt install g++ gdb openssh-server git -y`

## 1.8. Setup SSH Keys on your Pi for GitHub

1. `ssh-keygen -b 4096` will generate a 4096 bit ssh-key.

   1. It will ask for where to save the public and private key files: hit enter/return to use the default.
   2. It will ask you for a password. If you plan to share this Pi with others, we recommend setting a password for your SSH Keys. Otherwise, just hit enter to use no password.
   3. It will ask you to confirm the password, either confirm the password, or hit enter if using no password.
   4. Two files will have been created `~/.ssh/id_rsa` and `~/.ssh/id_rsa.pub` . These are your private and public keys, respectively.

2. Give GitHub your public key:

   1. Go [here](https://github.com/settings/ssh/new). Log in if prompted.
   2. The title is for you to know where the SSH key is so you can remove them as you reinstall OSes or lose devices. We recommend `{DATE} Raspberry Pi`
   3. Get the SSH Key from your Pi: run `cat ~/.ssh/id_rsa.pub`
   4. Copy the output and paste it into the Key field on GitHub

3. Verify that Git was correctly setup `ssh git@github.com` : You should get something like `Hi <your name>! You've successfully authenticated, but GitHub does not provide shell access. Connection to github.com closed.`
4. The SSH Key is now setup on your Pi, allowing you to easily clone/push to private repositories on github from your Pi. You will need to repeat these steps on your machine

   1. If on windows: using MSYS2 and/or Git Bash. Note that you need both able to clone repos as VS Code requires git bash to work, while your terminal in VS Code (MSYS2 MINGW64) will also require the keys to be setup correctly. If you do it correctly, you will need to only add 1 key; however, there is little harm in creating multiple SSH Keys.
   2. Other OSes, just through the terminal.
