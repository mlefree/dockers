#!/bin/bash

declare -a packages=("nuxeo-web-ui"  "easyshare" "nuxeo-csv" "nuxeo-dam" "nuxeo-diff"    "nuxeo-drive"  "nuxeo-showcase-content"    "nuxeo-spreadsheet" "nuxeo-diff-pictures"   "nuxeo-imap-connector"  "nuxeo-liveconnect")
declare -a versions=("2.4.0"         "1.5.3"     "1.7.3"     "6.4.3"     "1.9.3"         "1.8.5"        "1.3.3"                     "1.4.3"             "1.3.3"                 "1.4.3"                 "1.3.3")

# get length of an array
arraylength=${#packages[@]}

# use for loop to read all values and indexes
for (( i=0; i<${arraylength}; i++ ));
do
    echo "${packages[$i]}-${versions[$i]}.zip ?"
    if [[ ! -f "/opt/nuxeo/packages/download/${packages[$i]}-${versions[$i]}.zip" ]]; then
        curl -sSL "https://connect.nuxeo.com/nuxeo/site/marketplace/package/${packages[$i]}/download?version=${versions[$i]}" -o "/opt/nuxeo/packages/download/${packages[$i]}-${versions[$i]}.zip"
    fi
done

if ls /opt/nuxeo/packages/download/*.zip 1> /dev/null 2>&1; then
    nuxeoctl mp-install /opt/nuxeo/packages/download/*.zip
fi
if ls /opt/nuxeo/packages/*.zip 1> /dev/null 2>&1; then
    nuxeoctl mp-install /opt/nuxeo/packages/*.zip
fi
