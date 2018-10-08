#!/bin/sh

set -eux

helm install -f ./value.yaml --name redmine stable/redmine --version 4.0.0
