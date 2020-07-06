#!/bin/bash

DIR=data
VERSION=3.8

mkdir -p $DIR

wget ftp://ftp.nga.mil/pub2/gandg/website/wgs84/apps/geotrans/current-version/sw/end_user_version/linux_user.tgz -O $DIR/linux_user.tgz

docker build -t gemerick/geotrans:$VERSION .
