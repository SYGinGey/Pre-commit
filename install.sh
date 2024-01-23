#!/bin/bash

set -e

CHECKSTYLE_RELEASE="https://github.com/checkstyle/checkstyle/releases/download/checkstyle-10.12.7/checkstyle-10.12.7-all.jar"

yum install ca-certificates wget unzip curl bash jq

cd /opt


wget -nc -O checkstyle.jar "https://github.com/checkstyle/checkstyle/releases/download/checkstyle-10.12.7/checkstyle-10.12.7-all.jar"
