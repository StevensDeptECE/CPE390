
# 1. Instructions for Installing VS Code

## 1.1. Table of Contents
- [1. Instructions for Installing VS Code](#1-instructions-for-installing-vs-code)
  - [1.1. Table of Contents](#11-table-of-contents)
  - [1.2. Installing VS Code](#12-installing-vs-code)

## 1.2. Installing VS Code
We are going to be using VS Code in class for a new, never before possible interactive class.
Please have your VS Code set up before the first class as follows:

1. Setup environment:
   1. Windows: install [MSYS2](https://www.msys2.org/), [Git](https://git-scm.com/downloads), in that particular order
      1. Run the following in `MSYS2 MinGW 64-bit`
         1. `pacman -S git nano make cmake mingw64/mingw-w64-x86_64-gcc mingw-w64-x86_64-gdb mingw-w64-x86_64-gcc mingw-w64-x86_64-toolchain mingw-w64-x86_64-zlib mingw-w64-x86_64-freetype mingw-w64-x86_64-glfw bison flex cgdb`
      2. Edit your windows path to include the following in exactly this order AT THE BOTTOM:
         1. `C:\msys64\mingw64\bin`
         2. `C:\msys64\usr\bin`
      3. Edit `C:\msys64\msys2_shell.cmd`, uncommenting `rem set MSYS2_PATH_TYPE=inherit` by removing `rem` from the front of the line.
      4. I believe that the git-bash will pull your ssh keys from the other shells. If not, you do not need to generate multiple ssh keys, just copy-paste the keys between msys2/wsl/cmd/etc in the home directory (`~/.ssh` or `C:\Users\StevensUser\.ssh`)
      5. In git bash, replacing Atilla's information with yours:
         1. `git config --global user.name "Atilla The Duck"`
         2. `git config --global user.email "aduck@stevens.edu"`
   2. Linux: make sure you have `g++`, `gdb`, and `git` installed.
      1. First run update and upgrade using your package manager. IE if you were on a distro that used apt: `sudo apt update -y && sudo apt full-upgrade -y`
         1. This may take around 5-10 minutes, depending on how recently your distro was compiled into an image and how many packages were included. (To keep the image light, I recommend grabbing the lightest package that includes a GUI, if multiple are offered)
      2. If not, use apt/pacman/etc to install
         1. `g++`
         2. `gdb`
         3. `make`
         4. `git`
      3. Set up git (locally) with your github info, replacing Atilla's information with yours:
         1. `git config --global user.name "Atilla The Duck"`
         2. `git config --global user.email "aduck@stevens.edu"`
   3. Mac: Same as linux but use [homebrew](https://brew.sh/)
2. [Install VS Code on your system](https://code.visualstudio.com/download). Leave vscode closed.
3. Download the following files as .bat and run them. For those that are unclear, on the page click the RAW button, then right click --> save as --> remove ".txt" at the end of the file name --> save. Then double click on it after download.
   1. [Windows](res/Instructions%20for%20Installing%20VSCode/install_extensions_locally.bat)
   2. [*nix/MacOS](res/Instructions%20for%20Installing%20VSCode/install_extensions_locally.sh)
      1. Note for *nix and MacOS, you will likely need to run `chmod +x install_extensions_locally.sh` before it will let you run the file
      2. MacOS: Run `Shell Command: Install 'code' command in PATH` using `f1` in VS Code
4. Open VS Code
5. Hit `F1` and type `Preferences: Open Settings (JSON)`, hit enter.
6. Replace the contents of the file with the following:
   1. [Windows](res/Instructions%20for%20Installing%20VSCode/settings_WINDOWS.json)
      1. If you didn't install MSYS2 in the default location with the default settings, you will need to modify this file to match your installation location/etc.
   2. [*nix/MacOS](res/Instructions%20for%20Installing%20VSCode/../Instructions%20for%20Installing%20VSCode/settings__NIX.json)
7. If you are not taking CPE-390, skip steps 7-8. [Setup your Pi (get Raspbian installed and make sure you can ssh into it from the terminal)](Setting%20Up%20Raspberry%20Pi%20For%20CPE-390.md). Note that if your Pi is not ready to be setup, you may skip steps 7 & 8 and proceed to further steps.
8. Setup connection between VSCode on your machine and the Pi. Note that if your Pi is not ready to be setup, you may skip this step and proceed to further steps.
   1. `F1`, type `Remote-SSH: Add New SSH Host`
   2. `ssh pi@raspberrypi -p 22`
      1. Change based on your port, host/hostname, username
      2. Note that this changes based on OS, and whatever SSH system you use. (Note especially the `-p 22`. Most linux/MacOS/non-default-windows ssh executables will use the format `user@host:port` instead of `user@host -p port`.
   3. Remote-SSH: Connect Current Window to Host
   4. Select the newly added host. Note that you can change the order in which they appear by reordering the SSH Config file.
   5. Unfortunately, extensions are installed to the host of the vscode server, meaning that you’ll need to install a good number of the extensions again, but this time, on the server. Open the bat/sh file from before and copy paste the IDs one by one into the extension search bar and install on server. Some may not need to be installed on the server as they work from your machine.

      ![1.png](res/Instructions%20for%20Installing%20VSCode/1.png)

9. My .vscode folder: This needs to be renamed to `.vscode` (not `.vscode_OS`). They allow you to run/debug from within VSCode. You will need to edit these files if not using Windows with the default MSYS2 installation path, or if your executables are not being generated in the root directory as `a.exe` or `a.out` (depending on your OS).
   1. [Linux](res/Instructions%20for%20Installing%20VSCode/.vscode_LINUX/)
   2. [MacOS](res/Instructions%20for%20Installing%20VSCode/.vscode_MACOS/) (credit to [jpaul21](https://github.com/jpaul21))
   3. [Windows](res/Instructions%20for%20Installing%20VSCode/.vscode_WINDOWS/)
10. If you are on Windows, you will need the following to be able to use MSYS from VSCode… [Essentially where I got this](https://stackoverflow.com/questions/45836650/how-do-i-integrate-msys2-shell-into-visual-studio-code-on-window) (don’t need to follow link)
    1. Edit ~/.bashrc in msys2 and add [this](res/Instructions%20for%20Installing%20VSCode/bashrc_FRAGMENT.sh) to the end.
    2. This is pretty hacky. If things break, just open msys2 (MinGW64) and use it the normal way, but please send us an email with a zip file of a workspace with a minimum reproducible example and any/all error messages.
11. To set up g++ as your compiler and debugger, follow the instructions in this link: https://code.visualstudio.com/docs/cpp/config-mingw
Since you already installed VSCode, you can ignore the pre-requisites. ONE MAIN CHANGE: when creating the tasks.json file, the "command:" line should be your path to g++. In our case, that line should be "command": "C:/msys64/mingw64/bin/g++.exe",
12. Some important shortcuts:
    1. `CTRL/CMD + p`: used for searching FOR files (not within). This is mostly useful when you are working in a large project with many files/large folder structure.
    2. `CTRL/CMD + SHIFT + P` or `F1`: Used to run commands - ie starting remote sessions.
    3. If you are in CMD/WSL you can use `code` to launch VS Code.
       1. `code .` opens the current folder in VS Code
       2. `code ..` opens the parent folder in VS Code
       3. `code <filename>` opens just the single file in VS Code (note that you can give multiple filenames in the same command, separate with spaces)
    4. If you are on Windows, I recommend getting Windows Terminal from the Windows Store
       1. Once installed hit `CTRL + ,` to open the settings. Insert the [following](res/Instructions%20for%20Installing%20VSCode/Windows_Terminal_Prefs_FRAGMENT.json) as the last or second-to-last item. Note that if second-to-last, you need to add a comma after the end curly brace…
          1. If you didn’t install msys with the default location/names, you will need to update the path to the msys icon, and that to bash.exe. Feel free to edit the font face, size, and color scheme to your preference.
       2. Save the file.
