#! /bin/bash

mkdir -p ~/mongo/db
mkdir -p ~/mongo/pids
mkdir -p ~/mongo/logs

# remove lock file
[ -f ~/mongo/db/mongod.lock ] && rm -rf ~/mongo/db/mongod.lock

touch ~/mongo/pids/mongodb.pid

# mongod --bind_ip 192.168.1.100 --port 27017 --dbpath tmp/db --logpath tmp/logs/mongodb.log --pidfilepath tmp/pids/mongodb.pid
nohup mongod --bind_ip 127.0.0.1 --port 27017 --dbpath ~/mongo/db --logpath ~/mongo/logs/mongodb.log --pidfilepath ~/mongo/pids/mongodb.pid > ~/mongo/logs/mongod.log 2>&1 &
