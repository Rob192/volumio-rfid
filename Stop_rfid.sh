#!/bin/bash
for KILLPID in `ps ax | grep play.py | awk '{print $1}'`; 
do
kill -9 $KILLPID;
done
