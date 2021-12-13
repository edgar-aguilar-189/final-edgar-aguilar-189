#!/bin/bash

GIT=https://github.com/cit384

echo "Content-type: text/html"
echo "x-final.cit384:" $GIT
echo ""

cat /home/user2/public_html/index.html

