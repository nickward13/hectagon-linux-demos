#!/bin/sh

az login

az group create --name hectagon-linux-demos-test --location "West US"
az group deployment create --resource-group hectagon-linux-demos-test --template-file azuredeploy.json --parameters @azuredeploy.parameters.test.json
