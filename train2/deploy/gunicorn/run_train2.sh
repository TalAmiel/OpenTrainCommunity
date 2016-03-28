#!/bin/bash
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
source /home/opentrain/.virtualenvs/train2/bin/activate
cd $DIR
# make sure this is the same port as in nginx conf file
exec gunicorn -p /home/opentrain/train2.pid -b 127.0.0.1:9003 -w 5 -t 90 train2.wsgi:application


