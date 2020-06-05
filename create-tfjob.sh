#!/bin/bash


mkdir -p jobs

NOW=`date '+%F-%H-%M-%S'`

echo "* Create job tf-job-mnist-${NOW}"
sed "s|name: \"mnist\"|name: mnist-${NOW}|" tf_job_mnist.yaml  > jobs/tf-job-mnist-${NOW}.yaml

echo "* Checkin tf-job-mnist-${NOW}"
git add jobs/tf-job-mnist-${NOW}.yaml
git commit -m tf-job-mnist-${NOW}
git push

