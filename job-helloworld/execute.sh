#!/bin/sh

set -eux

kubectl delete -f ./job.yaml
kubectl create -f ./job.yaml
