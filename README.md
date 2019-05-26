k3s-raspberry
=============

create.sh create a raspberry pi raspbian based image for k3s

connection to k3s can be established by loading secrets from secrethub and 
during runtime to create the configuration needed

under the hoods this creates a k3s-agent service which will automatically download the needed node-token and master ip address

the credentials for secrethub must be added to custom-steps/10-secrethub-credentials
before creating the raspbian image

some parts of this configuration are specific to my setup e.g the timezone
you can change these by modifing the config file

## Requirements
- jq
- docker (optional)

## How to run
as the script will download pi-gen and modify it on the fly simply run
```bash
./create.sh
```


Credits to 
- secrethub
- RPI-Distro/pi-gen
- rancher/k3s 
