#!/bin/sh

az login

az group create --name hectagon-linux-demos --location "West US" --tags Permanent=True
az group deployment create --resource-group hectagon-linux-demos --template-file azuredeploy.json --parameters @azuredeploy.parameters.prod.json
