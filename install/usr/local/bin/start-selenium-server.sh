#!/bin/bash

export DISPLAY=:21
/etc/init.d/xvfb start

export DISPLAY=:21

echo "Starting Selenium ..."
java -jar /srv/selenium-server-standalone-2.44.0.jar -Dwebdriver.chrome.driver=/srv/chromedriver -timeout=10 -browserTimeout=300
