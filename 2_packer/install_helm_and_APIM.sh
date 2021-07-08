#!/bin/bash

sudo yum install git -y
git clone https://github.com/Axway/Cloud-Automation

curl -fsSL -o get_helm.sh https://raw.githubusercontent.com/helm/helm/master/scripts/get-helm-3
chmod 700 get_helm.sh
./get_helm.sh

cd Cloud-Automation/
helm install axwayapimplatform APIM/amplify-apim-7.7-1.3.0.tgz
