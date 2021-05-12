#!/bin/bash

kubectl apply -f voila-multi-match-tool.yaml
kubectl get services voila-multi-match-tool-service | awk '/voila-multi-match-tool-service/ { print $5 }' | awk -F '[:/]' '{ print $2 }' > "/mnt/dj-stor01/platinum/neuromancer-ingest/NodePort.txt"
