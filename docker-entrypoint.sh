#!/bin/bash
set -x
ls -la /data
ls -la /data/db
id -u
mongod $2 $args