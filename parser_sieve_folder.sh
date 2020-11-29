#!/bin/bash

################
# Tool Name: Sieve_to_SOGo Sieve import
# Description: Permet de parser le dossier sieve original
# Version: 1.0
# Author: William VINCENT
# Author URI: https://github.com/wixaw
# License: GPLv2
################

# On test si le dossier existe, sinon on quit le programme
PLPATH=`pwd`
SIEVEDIR="/Users/brmalon2/sieve"
if [ -d $SIEVEDIR ]; then
    cd $SIEVEDIR
else
    exit;
fi

# MAIN 
# On boucle sur tous les répertoires a/, b/, c/ ... 
for sieve_file in *.sieve ; do
    user="${sieve_file/.sieve/}"
    # Execution de la commande perl 
    perl $PLPATH/sieve_to_sogo-import.pl ${sieve_file} ${user}
done
