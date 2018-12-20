#!/bin/sh
# deploy.sh
set -e

sudo apt-get install -y git-ftp


# deploy fazendo upload via ftp, utilizando o git-ftp para isso
git ftp init --user $FTP_USER --passwd $FTP_PASS ftp://$FTP_HOST/public_html/lab-travisci.devopszone
