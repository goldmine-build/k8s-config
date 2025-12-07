#!/usr/bin/env bash

kubectl create configmap gold-goldmine-config --from-file=gold/gold-config/ --dry-run=client -o yaml | kubectl apply -f -
