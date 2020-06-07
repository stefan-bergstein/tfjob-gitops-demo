#!/bin/bash


rm -f  jobs/queue-0/tf-job-*.yaml
rm -f  jobs/queue-1/tf-job-*.yaml
git add jobs/queue-0
git add jobs/queue-1

git commit -m "cleanup"
git push






