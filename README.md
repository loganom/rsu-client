RuneScape Unix/Linux Client (rsu-client)
==========

This is the git repository for the RSU-Client, all development happens
here before updates are pushed to the client and other repositories.
This repository does not include the jawt.dll file neccessary for running
the game through Wine, however you __can run the game__ natively __without that file__.
If you require Wine support you should instead install the stable client
from one of the following repositories:

__Linux Repositories__
* [ArchLinux AUR Repository](https://aur.archlinux.org/packages.php?ID=59362 "ArchLinux AUR Repository")
* [Launchpad Ubuntu/Mint PPA](https://launchpad.net/~hikariknight/+archive/unix-runescape-client/ "Launchpad PPA")

__Installers (Powered by [BitRock](http://bitrock.com/))__
* [Windows Installer](https://dl.dropbox.com/u/11631899/RSU/RSU-windows-installer.exe "Windows Installer")
* [Linux 32bit Installer](https://dl.dropbox.com/u/11631899/RSU/RSU-linux-installer.run.zip "Linux 32bit Installer")
* [Linux 64bit Installer](https://dl.dropbox.com/u/11631899/RSU/RSU-linux-x64-installer.run.zip "Linux 64bit Installer")
* [Mac OSX Installer](https://dl.dropbox.com/u/11631899/RSU/RSU-osx-installer.app.zip "Mac OSX Installer")

__Universal Archive/Zipped versions (If you dont want an installer)__
* [Universal tar.gz Archive](https://github.com/HikariKnight/rsu-client/archive/master.tar.gz "Universal tar.gz Archive")
* [Universal zip Archive](https://github.com/HikariKnight/rsu-client/archive/master.zip "Universal zip Archive")

*__[RuneScape](http://runescape.com) is a registred trademark of [Jagex Ltd](http://jagex.com).__*

Install instructions
----------
__Installation on Debian__

1. Open the Terminal program and type in the following commands:
<pre>echo "deb http://ppa.launchpad.net/hikariknight/unix-runescape-client/ubuntu precise main" | sudo tee -a /etc/apt/sources.list
sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 9BA73CFA
sudo apt-get update && sudo apt-get install unix-runescape-client</pre>

__Installation on Ubuntu or Mint__

1. Open the Terminal program and type in the following command:
<pre>sudo apt-add-repository ppa:hikariknight/unix-runescape-client</pre>
2. Then once that is done type in the following commands:
<pre>sudo apt-get update && sudo apt-get install unix-runescape-client</pre>

__Installation on ArchLinux__

1. Open the Terminal program and type in the following command:
<pre>yaourt unix-runescape-client</pre>

__Other Linux systems__

Please use the bitrock installer or universal archive.
The RSU-Client is not officially supported on other Linux systems
due to the lack of package maintainers for those systems.
Also the RSU-Client may not work correctly on other Linux systems due to missing packages



About the Project
----------
Development of the RSU-Client started in late October 2011.
Back then it was designed as a Linux port of the
Official RuneScape Client for Windows.

It quickly gained support for the windows client __runescape.prm__ file
and its own __settings.conf__ file which would let users enable and disable
built-in fixes to make the game work just as good on Linux as it does on
Windows.

In December 2011 the RSU-Client became a Unix client, working on almost
any Unix platform with Perl and Java installed, and in January 2012
The RSU-Client was able to run on Windows too!

Later the RSU-Client got its own graphical settings editor for the
__settings.conf__ and __runescape.prm__ with a jagexcache cleaner included.

And finally the client got support for modules, which lets anyone
add their own functionality to the client
(although not inside the client window due to license restrictions!)

![alt text](http://i.imgur.com/zWn4sSQ.png "RSU Client Launcher Window")


Features
----------
* Optimized runescape.prm file (using 512mb for java heap space and 2mb stacksize by default instead of 256mb heap)
* MultiCore loading of map chunks
* Launcher that contains the RuneScape NewsFeed
* Able to launch both the main game and oldschool, without the need to mess with files!
* Built-in fixes (Uses Java6 instead of Java7 on Mac OSX if Java6 exists, and fixes opengl with java7 on Linux)
* Settings editor (Easily edit the runescape.prm or settings.conf to tweak the client to optimal performance) - _requires WxPerl_
* Working Language Settings! (Previously the language settings would not work on Linux on the client)
* Ability to change which Java to run the Client with
* Crossplatform! (works natively in Windows, MacOSX and Linux, may also run on Solaris and BSD but with limited support)
* Integrates with both Mac and Linux (the __install-desktop-icons__ script makes a launcher for the client in the systems native format)
* Built in updater! (Lets you easily update __jagexappletviewer.jar__ easily whenever jagex updates their client!)
* Script updater! (If you use the tar.gz archive version, it will let you update the scripts through the updater)
* Module support (Lets you make your own modules to add functionality to the script part of the client Ex: calculators)
* Works on several architectures (64bit/amd64, 32bit/i386, armel, lpia, arm32, arm64, sparc32, sparc64) - _NOTE: arm support only tested on Linux, as perl is not compiled for arm on windows yet!_


Contribution
-----------
If you want to contribute to the project you can do that in several ways.
Either do a pull request and contribute through that (make sure you only commit to the development branch!)

Or you can send a message with the code on youtube to [RSCommunityTech](http://www.youtube.com/user/RSCommunityTech).
If you contribute code you can also get your name or nickname in the contributors list below (if you want)

Developers, Contributors and people that have helped the project
-----------
* HikariKnight - _Developer_
* [ivanpu](https://github.com/ivanpu) - _Aur Repository_
* chroot - _force pulseaudio_
* [Ethoxyethaan (nick.hermans.be+rsu@gmail.com)](mailto:nick.hermans.be+rsu@gmail.com) - _original bash script for launching the jagexappletviewer.jar on Linux_
* Jmb71 - _findjavalib regex_
* Test6125 - _stacksize fix in prm_
* [Fallen_Unia](https://github.com/Unia) - _Zenity support in the Updater_
* Kalio - _Portable jagexcache_
* [Jagex](http://jagex.com) - _Making the official client and providing the sourcecode (plus adding the rsu client to_ [downloads](http://runescape.com/downloads)_!)_
