#/bin/sh
TARGET_DIR=$1
PUBLIC_DIR=public

git fetch
git pull

#build and deploy - root
cd root_hugosite
rm -r ${PUBLIC_DIR}
hugo

cp -r ${PUBLIC_DIR}/* ${TARGET_DIR}/root