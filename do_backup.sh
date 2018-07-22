#! /bin/bash
#cd to script folder
cd "${0%/*}"

#define constants
. .dropbox_uploader
date=$(date +"%d-%b-%Y")

credentialsFile=./.mysql-credentials.cnf
# Dump database into SQL file
mysqldump --defaults-extra-file=$credentialsFile $DB_DATABASE | gzip> $DB_DATABASE-$date.sql.gz

#upload to dropbox
./dropbox_uploader.sh -f .dropbox_uploader upload ./$DB_DATABASE-$date.sql.gz /$DROP_BOX_FOLDER/
./dropbox_uploader.sh -f .dropbox_uploader upload $VHOSTS_FOLDER/$SITE_FOLDER/* /$DROP_BOX_FOLDER/$SITE_FOLDER/

# Delete files older than 30 days
find ./*.sql.gz -mtime +30 -exec rm {} \;
