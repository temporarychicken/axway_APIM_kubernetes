#!/bin/bash

git clone https://github.com/Axway/Cloud-Automation

cd Cloud-Automation/
helm install axwayapimplatform APIM/amplify-apim-7.7-1.3.0.tgz
