# This Dockerfile will be builded on DockerHub automated build configuration to create:
# - lorenzocalamandrei/angular-container:*.*.*-dev
# where *.*.* is the version of this Dockerfile
# The version will be taken from the tag by git.

# This Dockerfile extends:
# - lorenzocalamandrei/angular-container:*.*.*-ci
# - lorenzocalamandrei/angular-container:*.*.*-base
ARG BASE_IMAGE=lorenzocalamandrei/angular-container:1.0.0-ci
FROM ${BASE_IMAGE}

# prepare the VOLUMES
VOLUME [ "/var/www/html" ]

EXPOSE 4200

# I prefer to enter into the container and then run `yarn start` otherwise installing new deps can cause a
# restart of the container or the compose
# But if you prefer you can override this CMD and set `yarn && yarn start` as CMD
CMD sleep infinity
