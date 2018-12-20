#!/bin/sh
# deploy.sh
set -e



# deploy fazendo upload via ftp, utilizando o git-ftp para isso
#git stash
gulp deploy --user $FTP_USER --password $FTP_PASS
