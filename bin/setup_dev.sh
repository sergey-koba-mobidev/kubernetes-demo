#!/bin/bash

echo -e "\x1B[01;93m --- Point odkcer client to minikube internal docker host --- \x1B[0m"
eval $(minikube docker-env)

echo -e "\x1B[01;93m --- Enable minikube ingress addon --- \x1B[0m"
minikube addons enable ingress

echo -e "\x1B[01;93m --- Update /etc/hosts with kb-skillup.dev --- \x1B[0m"
echo "$(minikube ip) kb-skillup.local" | sudo tee -a /etc/hosts

echo -e "\x1B[01;93m --- Build images --- \x1B[0m"
docker build -t skillup_api api