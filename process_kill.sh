#!/bin/bash
echo "HADOOKEN, $1!"
ps aux | grep $1 | awk '{print $2}' | xargs kill -9
