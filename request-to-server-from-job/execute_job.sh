#!/bin/sh

kubectl get job my-service-job 2>/dev/null
ret=$?
echo $ret

if [ $ret = 0 ]; then
  kubectl delete -f ./job.yaml
fi

kubectl create -f ./job.yaml
