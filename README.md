# Angular Container

## Requirements

- Docker

## How to run

Main use of this container is to run angular tests or tasks on CI env.
Otherwise you can use it to run angular server. 

You can use this container as image on GitLab CI.

Example:

```yaml
image: lorenzocalamandrei/angular-container

...

Some Job:
    image: lorenzocalamandrei/angular-container
    script:
      - yarn
      - yarn ci
    artifacts:
      ... 
```

## Contributors

- Lorenzo Calamandrei <nexcal.dev@gmail.com>
