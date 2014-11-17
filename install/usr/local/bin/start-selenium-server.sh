#!/bin/bash

export DISPLAY=:21
/etc/init.d/xvfb start

export DISPLAY=:21

echo "Starting Selenium ..."
java -Xms512m -Xmx512m -jar /srv/selenium-server-standalone-2.44.0.jar -Dwebdriver.chrome.driver=/srv/chromedriver -timeout=300 -browserTimeout=300
