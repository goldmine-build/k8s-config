#!/usr/bin/env bash

k3s kubectl create configmap gold-goldmine-config --from-file=gold/gold-config/ --dry-run=client -o yaml | k3s kubectl apply -f -
