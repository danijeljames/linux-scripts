#!/bin/bash
#
# Change password of user
#
version="0.0.1"
#
###############################################################################
# Load All Functions                                                          #
###############################################################################
### Show help
function showHelp {
        clear
        echo 'Linux Scripts'
        echo
        echo 'Change User Password'
        echo 
        echo 'Usage: $1 [-h|--help]'
        echo 
        echo 'Option:'
        echo '   -h | --help       This help file'
        echo 
}
### Ask for username
function whichUser {
		echo 'Change password for user: '
		read username
		clear
		echo
		passwd $username
}
###############################################################################
# Standard UI                                                                 #
###############################################################################
case $1 in
        -h | --help )           showHelp
        						exit
        						;;				
        * )                     whichUser
                                exit 1
esac
