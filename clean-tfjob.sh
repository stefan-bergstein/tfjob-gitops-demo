#!/bin/bash


rm -f  jobs/queue-0/*
rm -f  jobs/queue-1/*
git add jobs/queue-0
git add jobs/queue-1

git commit -m "cleanup"
git push






