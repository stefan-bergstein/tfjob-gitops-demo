#!/bin/bash


mkdir -p jobs

NOW=`date '+%F_%H-%M-%S'`

echo "* Create job tf_job_mnist-${NOW}"
sed "s|name: \"mnist\"|name: mnist-${NOW}|" tf_job_mnist.yaml > jobs/tf_job_mnist-${NOW}.yaml

echo "* Checkin tf_job_mnist-${NOW}"
git add jobs/tf_job_mnist-${NOW}.yaml
git commit -m tf_job_mnist-${NOW}
git push

