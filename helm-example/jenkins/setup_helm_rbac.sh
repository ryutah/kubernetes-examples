#/bin/sh

set -eux

# For local environment

# Create service account
kubectl create serviceaccount tiller --namespace kube-system

# Bind service account to role
kubectl create clusterrolebinding tiller-cluster-rule \
  --clusterrole cluster-admin \
  --serviceaccount kube-system:tiller

# Apply service account to tiller service.
kubectl patch deploy --namespace kube-system tiller-deploy \
  -p '{"spec":{"template":{"spec":{"serviceAccount":"tiller"}}}}'
