#!/bin/sh
# deploy.sh
set -e

sudo apt-get install lftp


# deployment via ftp upload. Using FTPS for that
lftp -c "set ftps:initial-prot ''; set ftp:ssl-allow no; open ftp://$FTP_USER:$FTP_PASS@$FTP_HOST:21; mirror -eRv public .; quit;"
