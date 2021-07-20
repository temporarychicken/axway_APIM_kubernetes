#!/bin/bash

curl -fsSL -o get_helm.sh https://raw.githubusercontent.com/helm/helm/master/scripts/get-helm-3
chmod 700 get_helm.sh
./get_helm.sh


# INSTALL NGINX INGRESS CONTROLLER (OPENSOURCE) USING HELM PACKAGE MANAGER

helm repo add nginx-stable https://helm.nginx.com/stable
helm repo update
helm install my-release nginx-stable/nginx-ingress

