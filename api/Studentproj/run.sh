#!/bin/sh
for pid in $(pgrep -f Studentproj.wsgi;)
do
	sudo kill -9 $pid
done

#/usr/local/bin/gunicorn -D -c gunicorn_config.py Studentproj.wsgi
/home/ubuntu/.local/bin/gunicorn -D -c gunicorn_config.py Studentproj.wsgi

