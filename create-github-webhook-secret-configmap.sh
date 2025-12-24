#!/usr/bin/env bash

kubectl create configmap github-webhook-secret --from-literal=secret=$(openssl rand -base64 24) --dry-run=client -o yaml | kubectl apply -f -
