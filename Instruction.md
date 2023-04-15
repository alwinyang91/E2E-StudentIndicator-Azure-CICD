# AWS CICD



## 1. Copy files

```
app.py
setup.py
requirements.txt
src
templates
artifacts
```



## 2. Create files

```shell
touch Dockerfile
```

- Check docker build locally



## 3. Create Container registries

- Log in Azure and select Services Container registries
- Create container registry
- Subscription: Projects Neuron (default), Resource group: testz1
- Registry name: testz1
- Create



## 4. Access keys

- Go to resource
- Registry name: testz1
- Login server: testz1.azurecr.io
- Find Settings, click Access keys, Admin user: Enabled
- Copy the Login server and password to secret.txt



## 5. Build Docker image

```shell
docker build -t testz1.azurecr.io/testz1:0.1 .

docker login testz1.azurecr.io

docker push testz1.azurecr.io/testz1:0.1
```



## 6. Create Web App

- Find Web  App and click Create
- Subscription: Project Neruron
  - Resource Group: create new: mlproject
- Instance Details:
  - Name: testz1
  - Publish: Docker Container
  - Operating System: Linux
- Next: Docker 
  - Image Source: Azure Container Registry
  - Registry: testz1
  - Image: testz1
  - Tag: 0.1



## 7. Set up Deployment

- Find Deployment: Deployment Center
- Source: GitHub Actions:...
- Continous deployment: on