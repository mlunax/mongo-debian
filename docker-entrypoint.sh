#!/bin/bash
set -x
if [ $1 == 'mongo' ]; then
    $1 $2
else
    $1 $2 $START_ARGS
fi