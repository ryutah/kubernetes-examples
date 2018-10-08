#!/bin/sh

set -eux

gcloud container clusters create gihyo \
  --cluster-version 1.10.7-gke.2 \
  --zone asia-northeast1-a \
  --machine-type=n1-standard-1 \
  --num-nodes 3 \
