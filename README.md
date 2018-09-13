# Kubernetes skillup

Kubernetes skillup to build simple Api / Front application to test Kubernetes.

## Getting Started

### Prerequisites

What things you need to install the software and how to install them. Follow links for istructions.

* [Docker](https://docs.docker.com/install/) 18.03.1-ce (2018-04-26) +
* [Docker Compose](https://docs.docker.com/compose/install/) 1.21.2 +
* [VirtualBox](https://www.virtualbox.org/wiki/Downloads)
* [Minikube](https://kubernetes.io/docs/setup/minikube/)

### First run
Using Terminal navigate to project folder (replace *"{path\_to\_project\_folder}"* with real path)

```bash
cd {path_to_project_folder}
```

Next steps:
* `minikube start`
* `bin/setup_dev.sh` - building docker images and setup environment
* `kubectl create -f kubernetes/dev`
* `kubectl get pods` - note name of any api-deployment running pod, for example `api-deployment-f695445b9-qhgs9`
* `kubectl exec api-deployment-f695445b9-qhgs9 rails db:migrate`

Check project is up and running using `minikube dashboard` and go to [http://kb-skillup.local](http://kb-skillup.local)

## Everyday usage

### Starting the application

Run `bin/start_dev.sh`

### Stopping the application

Run `minikube stop`

### Updating the application

* `kubectl apply -f kubernetes/dev`

### Restart Api
* `kubectl delete -f kubernetes/dev/api_deployment.yaml`
* `kubectl create -f kubernetes/dev/api_deployment.yaml`

### Debugging the application

Specific instructions how to run the application console and attach to running application for interactive debugging. For example:

Run this command to get to console
```bash
kubectl get pods
kubectl exec -it api-deployment-7965d7f9c4-mvbg2 bash
```

### Cleanup

Run command `kubectl delete -f kubernetes/dev`

## Deployment

Short description of deployment process. Manual or CI.

### Provisioning the servers

Steps required to create and provision new servers in existing environment. 
Provision new environment.

### Deploying the application

Steps required to deploy application to existing environment.

### Monitoring the application

Short description of commands and tools to monitor and debug application running on staging or production.

### Troubleshooting

Some useful info troubleshooting provisioning and deployment. Maybe absent.

## Documentation

A link to the project documentation (or it is explicitly written that there is no documentation except this file).


## Codestyle

[Ruby coding style guide](https://github.com/rubocop-hq/ruby-style-guide)


## License

[LICENSE.md](LICENSE.md)