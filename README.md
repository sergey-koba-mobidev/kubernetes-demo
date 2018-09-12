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
* `eval $(minikube docker-env)`
* `bin/setup_dev.sh` - building docker images and setup environment
* `kubectl create -f kubernetes/dev`

Check project is up and running using `minikube dashboard` command
Done!

## Everyday usage

Here will go the instructions how to use project on daily basis after the first launch.

### Starting the application

Run `minikube start`
* `eval $(minikube docker-env)`

### Stopping the application

Run `minikube stop`

### Updating the application

* `kubectl apply -f kubernetes/dev`

### Debugging the application

Specific instructions how to run the application console and attach to running application for interactive debugging. For example:

Run this command to get to console
```bash
kubectl get pods
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