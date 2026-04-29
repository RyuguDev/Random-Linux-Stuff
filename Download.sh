#!/bin/bash

while true
do
    read -p "Download-Link eingeben: " url

    if [ -z "$url" ]; then
        echo "Kein Link eingegeben."
        continue
    fi

    read -p "Eigener Dateiname? (Leer lassen für Originalnamen): " filename

    if [ -z "$filename" ]; then
        wget -c --load-cookies cookies.txt "$url"
    else
        wget -c --load-cookies cookies.txt -O "$filename" "$url"
    fi

    echo "Download abgeschlossen."
    echo "-----------------------------------"
done
