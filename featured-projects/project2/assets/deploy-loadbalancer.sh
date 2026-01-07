
#!/bin/bash

# ================================
# Azure Load Balancer Deployment
# ================================

# 🔧 Variables
RG="RandRG"
LOCATION="eastus"
VNET="RandVNet"
SUBNET="RandSubnet"
LB="RandLB"
FRONTEND="RandFrontend"
BACKENDPOOL="RandBackendPool"
PROBE="RandProbe"
RULE="RandRule"
PUBLICIP="RandPublicIP"

# Create Resource Group
az group create --name $RG --location $LOCATION

#  Create Virtual Network and Subnet
az network vnet create \
  --resource-group $RG \
  --name $VNET \
  --subnet-name $SUBNET

#  Create Public IP
az network public-ip create \
  --resource-group $RG \
  --name $PUBLICIP \
  --sku Standard \
  --allocation-method static

#  Create Load Balancer with Frontend and Backend Pool
az network lb create \
  --resource-group $RG \
  --name $LB \
  --sku Standard \
  --frontend-ip-name $FRONTEND \
  --backend-pool-name $BACKENDPOOL \
  --public-ip-address $PUBLICIP

#  Create Health Probe
az network lb probe create \
  --resource-group $RG \
  --lb-name $LB \
  --name $PROBE \
  --protocol Http \
  --port 80 \
  --path "/"

#  Create Load Balancing Rule
az network lb rule create \
  --resource-group $RG \
  --lb-name $LB \
  --name $RULE \
  --protocol Tcp \
  --frontend-port 80 \
  --backend-port 80 \
  --frontend-ip-name $FRONTEND \
  --backend-pool-name $BACKENDPOOL \
  --probe-name $PROBE

# Create Two VMs and Attach to Backend Pool
for i in 1 2; do
  VMNAME="RandVM$i"
  NICNAME="RandNIC$i"

  # Create NIC and attach to backend pool
  az network nic create \
    --resource-group $RG \
    --name $NICNAME \
    --vnet-name $VNET \
    --subnet $SUBNET \
    --lb-name $LB \
    --lb-address-pools $BACKENDPOOL

  # Create VM
  az vm create \
    --resource-group $RG \
    --name $VMNAME \
    --nics $NICNAME \
    --image UbuntuLTS \
    --admin-username azureuser \
    --generate-ssh-keys \
    --no-wait
done

# Output Public IP for Testing
echo "Load Balancer Public IP:"
az network public-ip show \
  --resource-group $RG \
  --name $PUBLICIP \
  --query ipAddress \
  --output tsv


