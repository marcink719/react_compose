# Deployment of React sample app on k8s  

### This repo contains all neccesary files for creating minimal docker image of react app (~24MB size).      


Building and pushing docker image by github actions is described in yaml file in folder `./github/workflows` 
  
To run the container, using docker compose: &ensp;&ensp; `docker compose up` or `docker compose up -d` (run in background).   

To setup k8s deployment: &ensp;&ensp; `kubectl apply -f deployment.yaml`.   

After cluster is successfully set up, you can check result, navigating in your browser to http://localhost:31001. Refer to `key note` below, to see platform limitations.      

  
  

### Key note   

#### When running k8s cluster not natively on linux (WSL, minikube on Windows etc.) there are network limitations.
#### 
```
      Services of type NodePort can be exposed via the minikube service service-name --url command. It must be run in a separate terminal window to keep the tunnel open. Ctrl-C in the terminal can be used to terminate the process at which time the network routes will be cleaned up.
```  

      
#### Follow https://minikube.sigs.k8s.io/docs/handbook/accessing/ to see details.

