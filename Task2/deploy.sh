#!/bin/bash
set -e

kubectl apply -f 1-test-app-depl.yaml
kubectl apply -f 2-hpa-4-test_app.yaml

echo "Развёртывание завершено."
kubectl get pods,svc,hpa