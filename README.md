# Angular Container

[![pipeline status](https://gitlab.com/lorenzocalamandrei/angular-docker/badges/master/pipeline.svg)](https://gitlab.com/lorenzocalamandrei/angular-docker/commits/master)

If you are checking this project on GitLab check also GitHub that is a mirror of this repo.
But GitHub is used to deploy on DockerHub, using automated build.

- [GitHub Repo - Angular Container](https://github.com/CalamandreiLorenzo/angular-docker)
- [GitLab Repo - Angular Container](https://gitlab.com/lorenzocalamandrei/angular-docker)
- [Docker Hub - Angular Container](https://hub.docker.com/r/lorenzocalamandrei/angular-container)

## Requirements

- Docker

## How to run

Main use of this container is to run angular tests or tasks on CI env.
Otherwise you can use it to run angular server. 

You can use this container as image on GitLab CI.

Example:

```yaml
image: lorenzocalamandrei/angular-container:1.0.0-ci

...

Some Job:
    image: lorenzocalamandrei/angular-container:1.0.0-ci
    script:
      - yarn
      - yarn ci
    artifacts:
      ... 
```

Or with a Docker Compose.

Example:

```yaml
version: "3.7"

services:
    MyAngularContainer:
      image: lorenzocalamandrei/angular-container:1.0.0-dev
      ports:
        - 8080:4200
      volumes:
        - ./:/var/www/html/
```

## Available Containers:

- Base Image
- CI Image
- Dev Image

## Contributors

- Lorenzo Calamandrei <nexcal.dev@gmail.com>
