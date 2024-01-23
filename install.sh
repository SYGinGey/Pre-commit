#!/bin/bash

set -e

CHECKSTYLE_RELEASE="https://github.com/checkstyle/checkstyle/releases/download/checkstyle-10.12.7/checkstyle-10.12.7-all.jar"

apt-get update && apt-get install -y ca-certificates wget unzip curl

cd /opt


wget -nc -O checkstyle.jar "https://github.com/checkstyle/checkstyle/releases/download/checkstyle-10.12.7/checkstyle-10.12.7-all.jar"
