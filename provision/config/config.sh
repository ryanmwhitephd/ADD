#! /bin/bash
#
# config.sh
# Copyright (C) 2017 Ryan Mackenzie White <ryan.white@cern.ch>
#
# Distributed under terms of the  license.
#

##################################################
# Configuration
# Users
# hadoop must be first, creates group for remaining hadoop 
users=(
    "hadoop"   
    "hadoopuser"
    "hdfs"
    "yarn"
    "mapred"
)

# Packages
# Installer functions found in packages.sh
declare -A packages
packages=(
    ["ssh"]=install_ssh
    ["vim"]=install_vim
    ["jdk"]=install_jdk
    ["python"]=install_python
)

networkcfg=(
    ${nodename}
    ${ipaddr}
    "192.168.56.1"
    "255.255.255.0"
)
