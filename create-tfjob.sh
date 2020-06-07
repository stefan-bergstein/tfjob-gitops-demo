#!/bin/bash


mkdir -p jobs/queue-0
mkdir -p jobs/queue-1

for i in {1..4}
do
  a=$(($i % 2))
  NOW=`date '+%F-%H-%M-%S'`

  JOBFILE=jobs/queue-${a}/tf-job-mnist-${NOW}.yaml

  echo "* Create job ${JOBFILE} in jobs/queue-${a}"
  sed "s|name: \"mnist\"|name: mnist-${NOW}|" tf_job_mnist.yaml  > ${JOBFILE}
  sed -i "s|--log_dir=/train/logs|--log_dir=/train/logs-${NOW}|"  ${JOBFILE}

  echo "* Checkin ${JOBFILE}"
  git add ${JOBFILE}
  sleep 2

done

git commit -m "Submit jobs"
git push


