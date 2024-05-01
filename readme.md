# About

Test-project for crossplane-related stuff. 

Easily create a local kubernetes cluster, install crossplane and providers.

Initially testing overwriting provider dns-config using [DeploymentRuntimeConfig](https://docs.crossplane.io/latest/concepts/providers/)

# Requirements:
  - [Docker](https://docs.docker.com/desktop)
  - [Kind](https://kind.sigs.k8s.io/docs/user/quick-start/#installing-with-a-package-manager)
  - [Ctlptl](https://github.com/tilt-dev/ctlptl)
  - [Kubectl](https://kubernetes.io/docs/tasks/tools/)
  - [Helm](https://helm.sh/docs/intro/install/)
  - Make (Pre-installed in most Linux distributions)


# Set up local environment
**Note:** All `make` commands are ran from root directory of this repository, make sure to clone it to your local environment. 

## Install requirements

Start by installing the [Requirements](#requirements). 

## Create kind cluster 

```sh
make kind
```

![make cluster](.images/kind.png)

This starts up Kind cluster with local registry.

## Install crossplane in the kind cluster
```sh
make crossplane
```

This command will fail if cluster context is not 'kind-kind'.

## Deploy providers

```sh
make providers
```

## Cleanup your local environment

Cleanup/Destroy local environment: 
```sh
`make destroy`
```
![make destroy](.images/destroy.png)

