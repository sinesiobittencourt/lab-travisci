#!/bin/sh
# deploy.sh
set -e

sudo apt-get install git-ftp


# deployment via ftp upload. Using FTPS for that
git ftp init --user $FTP_USER --passwd $FTP_PASS ftp://$FTP_HOST/public_html/lab-travisci.devopszone.net

