#!/bin/bash

os=$(dpkg --print-architecture)
if [ "$os" = "armhf" ]; then os=arm; fi
url="http://www.mysqueezebox.com/update/?version=7.9.1&revision=1&geturl=1&os=deb$os"
latest_lms=$(wget -q -O - "$url")
mkdir -p /sources
cd /sources
wget $latest_lms
lms_deb=${latest_lms##*/}
dpkg -i $lms_deb

