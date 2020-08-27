# 1. Preparing to Take this Course

## 1.1. Table of Contents

- [1. Preparing to Take this Course](#1-preparing-to-take-this-course)
  - [1.1. Table of Contents](#11-table-of-contents)
  - [1.2. Instructions for All Courses](#12-instructions-for-all-courses)
    - [1.2.1. For all courses, please install the following](#121-for-all-courses-please-install-the-following)
  - [1.3. CPE-390 (Microprocessor Systems - Computer Architecture)](#13-cpe-390-microprocessor-systems---computer-architecture)
  - [1.4. CPE-593 (Applied Data Structures and Algorithms)](#14-cpe-593-applied-data-structures-and-algorithms)
  - [1.5. CPE-553 (C++)](#15-cpe-553-c)
    - [1.5.1. IDE Installation](#151-ide-installation)
      - [1.5.1.1. CLion](#1511-clion)
      - [1.5.1.2. Visual Studio](#1512-visual-studio)
    - [1.5.2. Non-IDE](#152-non-ide)
      - [1.5.2.1. MSYS2 with g++/gdb](#1521-msys2-with-ggdb)
  - [1.6. EE-552 (Java)](#16-ee-552-java)
  - [1.7. Bibliography](#17-bibliography)

## 1.2. Instructions for All Courses

If you are preparing to take one of the courses I teach, then I applaud you for getting here, hopefully before the semester starts. This document will outline the necessary tools you will need to be successful in these courses.

[The base directory for all my courses is called current.](https://drive.google.com/open?id=0Bwxfq4Y7f7vkeHB2emExaThFUlE)

[An FAQ describes some of the directories under current](https://docs.google.com/document/d/1YJWXBWw9lo2KLz1e7CejZ9c99dEqMGSoovu3GMmG07Y/edit?usp=sharing)

Help will be available in the Graduate Student Support Center for all courses listed here.

If for any reason you are unable to install any of the required programs, do not worry! We are here to help, and in the time being, you may utilize the machines in B123 to get your work done.

Additionally, there are [video instructions for installing some of the following tools](https://docs.google.com/document/d/1Y4A8po7VMNgqa6_oDe02X1yfd66QDiv6LBtUD7U29E0/edit). Not every tool is here, and these videos may be slightly outdated. We are working on it.

### 1.2.1. For all courses, please install the following

Microsoft VS Code is a great text editor that will allow you to work on my computer and be “called to the board” in class. Please install vscode [following these instructions](Instructions%20for%20Installing%20VSCode.md) on your laptop and we will go over how to do this in the first class. I can promise a more fun, interactive class if you do this.

Git ([Windows Download Link](https://git-scm.com/)) is a version control software. Using git, you can go back and get every version of what you have written. If you host it somewhere else (like github, see below) then if your computer breaks, is lost or stolen, you can retrieve all your work. Git is the most popular version control system today and something every programmer needs to know, which is why I use it in all my courses.

[If you need help, please refer to this document](https://docs.google.com/presentation/d/1kSknsnRPqe1-DSIx-r9alMr1drEHzgzzXxqCkdlnHGk/edit#slide=id.p)

You will also need a Github account. Github is a website that offers online hosting of git repositories. All my class examples are hosted on git, and in some cases you will be asked to submit larger homeworks using git. In any case as a programmer, this is something everyone should know. [Link to get an educational GitHub account (free features)](https://education.github.com/)

## 1.3. CPE-390 (Microprocessor Systems - Computer Architecture)

**_You will need a Raspberry Pi, power supply, and microSD card for this course._
Please be aware if you buy a microSD card you need to install Raspbian on it. So you should have access to a card reader/writer and an adapter that will allow you to read and write data to the card from your computer. Or you can just buy Raspbian on a card (not recommended).**

We will start with a quick review of C++ and then dive in and see how it generates assembly code. Below is a list of required materials for this class:
| Software                                      | Available From                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  |
| --------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| **Windows:**<br>MSYS2<br>G++/GDB              | [https://www.msys2.org/](https://www.msys2.org/)<br><br>`pacman -S mingw-w64-x86_64-gcc`<br>`pacman -S mingw-w64-x86_64-gdb`<br>`pacman -S mingw-w64-x86_64-make`<br>for emacs:<br>`pacman -S mingw-w64-x86_64-emacs`<br><br>for git:<br>`pacman -S git`<br><br>You will need to add /mingw64/bin to your path:<br>`export PATH=/mingw64/bin:$PATH`<br>Put the above line at the end of the following files (create a new line at the bottom if necessary): (ie notepad `~/.profile`):<br><br>`~/.profile`<br>and<br>`~/.bash_profile`<br>Do NOT create the files if they do not already exist. |
| **Mac OS X**:<br>Command-line developer tools | Open a Terminal and type:<br>`xcode-select --install`<br>Also get [HomeBrew](https://brew.sh/)                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  |
| Arduino IDE                                   | [Arduino Downloads](https://www.arduino.cc/en/Main/Software)                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    |
| Git (instructions in the introduction)        | [Windows Downloads](https://git-scm.com/)<br>Other OSes should install git through their package manager (apt, pacman, brew, etc)                                                                                                                                                                                                                                                                                                                                                                                                                                                               |

<br>

| Hardware (You only need ONE Raspberry Pi, either 3B+ or 4)                                                                                                | Available From                                                                                                                                                          |
| --------------------------------------------------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| MicroSD card (minimum 4GB, 8Gb is better)<br>If you plan on using your Pi in future, 16 or more might be useful (opencv required a 32 gb card to compile) | [Sandisk Card with Adapter](https://www.amazon.com/Sandisk-Ultra-Micro-UHS-I-Adapter/dp/B073K14CVB/)                                                                    |
| Raspberry Pi 3B+ with Power Supply<br>(probably no longer the cheapest, perhaps no longer made. not as good as the 4 but runs cooler)                     | [CanaKit Basic Kit](https://www.amazon.com/CanaKit-Raspberry-Premium-Clear-Supply/dp/B07BC7BMHY/)                                                                       |
| Raspberry Pi 4 with Power Supply<br><br>You will need to purchase a mini HDMI to HDMI adapter to use with our monitors.                                   | [CanaKit Basic Kit (2gb RAM)](https://www.amazon.com/CanaKit-Raspberry-Basic-Kit-2GB/dp/B07TYK4RL8/)                                                                    |
| Optional: Arduino Due                                                                                                                                     | [banggood.com](https://www.banggood.com/DUE-R3-32-Bit-ARM-Module-Development-Board-With-USB-Cable-p-906466.html?akmClientCountry=America&rmmds=search&cur_warehouse=CN) |

You may bring in your Raspberry Pi to B123 and use it in our lab. We have keyboards, video cables etc. for you to use, but we do not have mini HDMI adapters yet for the 4.

Having an IDE is not that important, because Raspberry Pi does not have great support for IDEs. Therefore, **it is highly recommended** to learn to use a text editor such as VI, Emacs, or nano. I am willing to conduct extra sessions to get people up to speed in these. Of course, you are welcome to use your own preferred editor, but please do not expect any support.  Instructions on how to install these will be provided in class.

## 1.4. CPE-593 (Applied Data Structures and Algorithms)

**Install either g++ or Java** as described for the corresponding classes below. Your homework must compile either on g++ or Java, and the tools listed below will do that.  

You will need git, described above, in order to get the examples that I build in class each week.

There is no other required materials for this class.

## 1.5. CPE-553 (C++)

The following tools are required for this class:

| Software                                                                                                                                                                                                                                                                                                                                                                                                                         | Available From                                                                                                                                                                                                                                                   |
| -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| **Windows**:<br>MSYS2 with g++/gdb<br>or<br>go to the Microosft store for Windows 10 and install Ubuntu [(also requires enabling WSL)](https://docs.microsoft.com/en-us/windows/wsl/install-win10)<br><br>AND I recommend<br><br>any IDE that uses the GCC toolchain<br>My favorites: CLion<br><br>I also recommend Qtcreator, qt is a major developer of graphical widgets.<br><br>Microsoft VS Code<br>Microsoft Visual Studio | [MSYS2](https://www.msys2.org/)<br><br>Instructions are below for installing g++/gdb with MSYS2.<br><br>[CLion](https://www.jetbrains.com/clion/download)<br><br>[Qt](https://www.qt.io/download)<br><br>[Visual Studio](https://code.visualstudio.com/download) |
| **Mac OS X**<br>Command-line developer tools<br><br>OR<br><br>Xcode                                                                                                                                                                                                                                                                                                                                                              | Open a Terminal and type:<br>`xcode-select --install`                                                                                                                                                                                                            |
**The easiest way to use all these is with an Integrated Development Environment (IDE).** I recommend Jetbrains CLion, which you can use free as a student and Qt Creator. 
The best one I have seen is Microsoft vscode, but I have not mastered configuring it yet. .

It would be worth your while to install Emacs, VI, Sublime Text 3, Atom, and Notepad++ (Windows). The more tools you know how to use, the better off you will be. These are not required for the course, however. The only requirement is that you must be able to build programs and use make/cmake for larger programs.

You will see me use some of these tools in class. **If you want to get a job programming, it is distinctly to your advantage to get as many tools as possible on your resume.**

### 1.5.1. IDE Installation

#### 1.5.1.1. [CLion](https://www.jetbrains.com/clion/download/)

It is the best portable environment I know.  You will have to get a license, but it is free for students.

#### 1.5.1.2. [Visual Studio](https://visualstudio.microsoft.com/)

You may use Visual Studio, but if you do not compile with g++ or clang, your code might be non-standard. If you do not submit code that compiles under g++, you will get a 25% for that assignment.

### 1.5.2. Non-IDE

If you are on Windows 10, the easiest thing is to [install Windows Subsystem for Linux](https://docs.microsoft.com/en-us/windows/wsl/install-win10), a full Ubuntu under windows. It doesn’t do graphics, but for any text programs it’s great and a full linux environment, a great learning opportunity.

For building graphical linux programs under windows, using C++ you can use [**MSYS2**](https://www.msys2.org/). This is what I use to build OpenGL programs like my Grail project that work on both Linux and Windows (and eventually Mac OS X).

There are a number of choices including **MinGW** (Minimal Gnu For Windows), **Cygwin** (a Unix-like environment running under windows).

#### 1.5.2.1. MSYS2 with g++/gdb

Once you have MSYS2, you will have to install all the tools for it. Assuming you have a 64 bit windows:

`pacman -Ss gcc | grep mingw64`

This will tell you what packages exist for the 64 bit version which contain gcc.

Install packages gcc, gdb, cmake, and make through the following commands:

```bash
pacman -S mingw-w64-x86_64-gcc
pacman -S mingw-w64-x86_64-gdb
pacman -S mingw-w64-x86_64-cmake
pacman -S mingw-w64-x86_64-make
```

All these programs will then be installed under your MSYS2 installation.  For most people, this is installed in C:\msys64 meaning that all the tools will be installed in `C:\msys64\mingw64\bin` or `C:\msys64\usr\bin`.

To configure CLion to use MSYS2

You will have to add these to settings. Click `File`>>`Settings`>>`build`

![1.png](res/Preparing%20to%20Take%20this%20Course/1.png)

![2.png](res/Preparing%20to%20Take%20this%20Course/2.png)

It would be a good idea to also install [Qt](http://www.qt.io/download/). Qt contains g++ and a debugger.  It also contains a nice portable library commonly used for graphics, but if you want to make a commercial product you must pay them.  If you want, you may install Cygwin, but that is more complicated so I am not going to cover it here.

Make sure that you can create a zip file for some homeworks that may require multiple files ***.rar files are not acceptable***.  On Windows you can get [7zip](http://www.7-zip.org/).

You may use Visual Studio or Xcode, but if you do you must make sure your code will work on our system (g++ 4.9 under Linux) when submitted.  If your code does not work you get 25%, although you may resubmit.

Please take the pretest as soon as the course opens.  This is just to collect data on how much you knew going into the course.  There are no prerequisites, you do not have to know how to program to take it (but it is obviously easier if you do).

## 1.6. EE-552 (Java)

Please install:

- [Processing](http://processing.org).
- [Netbeans](https://netbeans.org/downloads/).
  - Note: for Netbeans now that Java Developer Kit 11 (JDK11) is the standard, you need to download the special beta version that is 11.1 as of last count. Netbeans 10 is mainstream but that won’t work with JDK11.
- [optional] [Eclipse](http://www.eclipse.org/)
- [optional] [Java](http://www.oracle.com/technetwork/java/javase/downloads/index.html)

Later in the course it is possible we might do some web programming using JSP/servlets in which case you can install Jakarta Tomcat, or do some database in which case we could install MySQL or MariaDB, but that will not be needed until much later if at all.

## 1.7. Bibliography

[For C++, there is a free textbook, but if you want to buy one I recommend Lippman, 5e](http://www.amazon.com/Primer-5th-Stanley-B-Lippman/dp/0321714113/ref=sr_1_2?ie=UTF8&qid=1451008292&sr=8-2&keywords=lippman%2C+5e)

[For Java, there is a free textbook, but if you want to buy one I recommend R. Daniel Liang](http://www.amazon.com/Intro-Java-Programming-Comprehensive-Version/dp/0133761312/ref=sr_1_fkmr0_1?ie=UTF8&qid=1451008341&sr=8-1-fkmr0&keywords=r+daniel+liang)

[For Data structures, the textbook is Cormen, Leiserson, Rivest and Stein:](http://www.amazon.com/Introduction-Algorithms-3rd-Thomas-Cormen/dp/0262033844/ref=sr_1_1?ie=UTF8&qid=1452860977&sr=8-1&keywords=cormen+leiserson+rivest+and+stein+introduction+to+algorithms+3rd+edition)
