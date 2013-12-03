#!/bin/bash
# Last Updated Nov 17, 2013

echo ''
echo -e '\033[33m#-------------------------------------------#\033[33m'
echo '#-------------------------------------------#'
echo '#-------------------------------------------#'
echo '#-------------------------------------------#'
echo '#  Frisbie Ubuntu based New-Install Script  #'
echo '#-------------------------------------------#'
echo '#-------------------------------------------#'
echo '#-------------------------------------------#'
echo '#-------------------------------------------#'
echo '#-------------------------------------------#'
sleep 2

read -p 'Press [Enter] Key To Start'
sleep 1

echo  'This May Take A While...'
echo  'Get a Fucking Monster Ultra Zero!'
echo  'After you enter the root password'
sleep 2

# UPDATE SOURCES & SYSTEM UPGRADE
echo '-------Updating Sources------'
sleep 2
echo '------Supply Root Password------'
echo -e "\033[0m"
sudo apt-get update -y

# Dist-Upgrade
echo -e '\033[33m------Performing System Upgrade------\033[33m'
echo -e "\033[0m"
sleep 2
sudo apt-get dist-upgrade -y

# INSTALLING COMMONLY USED APPLICATIONS
echo -e '\033[33m------Installing Applications------\033[33m'
echo -e "\033[0m"
sleep 2
sudo apt-get install -y build-essential kernel-package libncurses5-dev bzip2 fakeroot git git-core filezilla minitube audacity soundconverter easytag arista dconf-tools transmission trimage guvcview meld blender gparted screenkey dkms empathy shotwell aptitude hardinfo gufw brasero guake xchat chromium-browser synaptic htop nmon dstat xbmc gnome-sushi unoconv laptop-mode-tools unrar gstreamer0.10-plugins-bad cmatrix libaa-bin bb conky conky-all git-core

sudo cp /usr/share/applications/guake.desktop /etc/xdg/autostart/

# SETTING UP PPA'S
echo -e '\033[33m------Setting Up PPAS------\033[33m'
sleep 2
# Openshot
sudo add-apt-repository -y ppa:openshot.developers/daily
# Gimp
sudo add-apt-repository -y ppa:otto-kesselgulasch/gimp
# I-Nex
sudo add-apt-repository -y ppa:nemh/gambas3
sudo add-apt-repository -y ppa:i-nex-development-team/stable
# Boot-Repair
sudo add-apt-repository -y ppa:yannubuntu/boot-repair
# Grub Customizer
sudo add-apt-repository -y ppa:danielrichter2007/grub-customizer
# Krita
sudo add-apt-repository -y ppa:kubuntu-ppa/backports
# Sublime Text
sudo add-apt-repository -y ppa:webupd8team/sublime-text-2
# VLC
sudo add-apt-repository -y ppa:videolan/stable-daily
# Nitro Share
sudo add-apt-repository -y ppa:george-edison55/nitroshare
# Variety
sudo add-apt-repository -y ppa:peterlevi/ppa
# Youtube Downloader
sudo add-apt-repository -y ppa:nilarimogard/webupd8
# Touchpad Indicator
sudo add-apt-repository -y ppa:atareao/atareao

#Update those repos
sudo apt-get update -qq

# INSTALLING PPA APPLICATIONS
echo '------Installing Openshot------'
echo -e "\033[0m"
sleep 2
sudo apt-get install -y openshot openshot-doc

echo -e '\033[33m------Installing The Gimp------\033[33m'
echo -e "\033[0m"
sleep 2
sudo apt-get install -y gimp

echo -e '\033[33m------Installing I-Nex------\033[33m'
echo -e "\033[0m"
sleep 2
sudo apt-get install -y i-nex

echo -e '\033[33m------Installing Boot-Repair------\033[33m'
echo -e "\033[0m"
sleep 2
sudo apt-get install -y boot-repair

echo -e '\033[33m------Installing Grub-Customizer------\033[33m'
echo -e "\033[0m"
sleep 2
sudo apt-get install -y grub-customizer

echo -e '\033[33m------Installing Krita------\033[33m'
echo -e "\033[0m"
sleep 2
sudo apt-get install -y krita

echo -e '\033[33m------Installing Sublime Text------\033[33m'
echo -e "\033[0m"
sleep 2
sudo apt-get install -y sublime-text && sudo apt-get install -y sublime-text-dev

echo -e '\033[33m------Installing VLC------\033[33m'
echo -e "\033[0m"
sleep 2
sudo apt-get install -y vlc

echo -e '\033[33m------Installing Nitroshare------\033[33m'
echo -e "\033[0m"
sleep 2
sudo apt-get install -y nitroshare

echo -e '\033[33m------Installing Variety------\033[33m'
echo -e "\033[0m"
sleep 2
sudo apt-get install -y variety

echo -e '\033[33m------Installing YouTube Downloader------\033[33m'
echo -e "\033[0m"
sleep 2
sudo apt-get install -y youtube-dl

echo -e '\033[33m------Installing Touchpad Indicator------\033[33m'
echo -e "\033[0m"
sleep 2
sudo apt-get install -y touchpad-indicator

# ADDING XORG-EDGERS PPA UPDATING XORG
echo -e '\033[33m------Preparing Xorg-Edgers PPA & Updating Xorg------\033[33m'
echo -e "\033[0m"
sleep 2
sudo add-apt-repository -y ppa:xorg-edgers/ppa && sudo apt-get update -qq && sudo apt-get dist-upgrade -y

# INSTALLING UBUNTU RESTRICTED EXTRAS
echo -e '\033[33m------Installing Ubuntu Restricted Extras for Multimedia Support------\033[33m'
echo -e "\033[0m"
sleep 2
sudo apt-get install -y ubuntu-restricted-extras

# CLEANING APT CACHE
echo -e '\033[33m------Almost Finished...Cleaning Apt Cache------\033[33m'
sleep 2
sudo apt-get clean

sleep 2
echo '#------FINISHED------#'
echo -e "\033[0m"

exit $?

