#!/usr/bin/env bash

#set -o errexit -o nounset

CLEAN="NO"
for i in "$@"
do
case $i in
    -c|--clean)
    CLEAN="YES"
    ;;
    *)
      # unknown option
    ;;
esac
done

echo "$@"
echo "CLEAN = ${CLEAN}"

if [ "${CLEAN}" == "YES" ]
then
    echo "Launch Clean instance (${CLEAN})"
    rm -rf .gen
    rm -rf .nuxeo_packages/download/*.zip
    docker-compose build
    docker-compose up --force-recreate
else
    echo "Launch instance"
    docker-compose up
fi
