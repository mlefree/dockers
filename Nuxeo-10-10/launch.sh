#!/usr/bin/env bash

#set -o errexit -o nounset

for i in "$@"
do
case $i in
    -c|--clean)
    CLEAN='YES'
    ;;
    *)
      # unknown option
    ;;
esac
done

echo "$@"
echo CLEAN = ${CLEAN}

if [[ CLEAN -eq 'YES' ]]
then
    rm -rf .gen
    rm -rf .nuxeo_packages/download/*.zip
    docker-compose build
    docker-compose up --force-recreate
else
    docker-compose up
fi