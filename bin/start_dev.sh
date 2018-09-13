#!/bin/bash

echo -e "\x1B[01;93m --- Start minikube --- \x1B[0m"
minikube start

echo -e "\x1B[01;93m --- Point Dokcer client to Minikube internal Docker host --- \x1B[0m"
eval $(minikube docker-env)

echo -e "\x1B[01;93m --- Mont current folder to Minikube --- \x1B[0m"
minikube mount .:/app