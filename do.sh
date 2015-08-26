#! /bin/bash

mkdir -p tmp/db
mkdir -p tmp/pids
mkdir -p tmp/logs


# remove lock file
[ -f tmp/db/mongod.lock ] && rm -rf tmp/db/mongod.lock

touch tmp/pids/mongodb.pid

# mongod --bind_ip 192.168.1.100 --port 27017 --dbpath tmp/db --logpath tmp/logs/mongodb.log --pidfilepath tmp/pids/mongodb.pid
nohup mongod --bind_ip 127.0.0.1 --port 27017 --dbpath tmp/db --logpath tmp/logs/mongodb.log --pidfilepath tmp/pids/mongodb.pid >mongod.log 2>&1 &
