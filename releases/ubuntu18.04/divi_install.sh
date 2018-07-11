#! /bin/bash
cd ~
PRESENTDIR=$(pwd)
cp ~/divid /usr/local/bin/divid
cp ~/divi-cli /usr/local/bin/divi-cli
mkdir ~/.divi
cp ~/divi.conf ~/.divi/divi.conf
cd $PRESENTDIR
