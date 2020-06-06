#!/bin/bash


rm -f  jobs/queue-0/mnist*.yaml
rm -f  jobs/queue-1/mnist*.yaml
git add jobs/queue-0
git add jobs/queue-1

git commit -m "cleanup"
git push






