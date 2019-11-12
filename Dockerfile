FROM node:11.10 AS build

LABEL mantainer="Lorenzo Calamandrei <nexcal.dev@gmail.com>"

ARG PACKAGE_MANAGER=yarn

# set working directory
WORKDIR /var/www/html/
RUN chown node:node .

# install angular-cli
RUN npm i -g @angular/cli

# set defaultPackageManager as default package manager into the angular CLI
RUN ng config -g cli.packageManager ${PACKAGE_MANAGER}

FROM build AS ci

# install chrome for protractor tests
RUN echo 'deb http://dl.google.com/linux/chrome/deb/ stable main' > /etc/apt/sources.list.d/chrome.list
RUN wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | apt-key add -
RUN set -x \
    && apt-get update \
    && apt-get install -y --no-install-recommends \
        google-chrome-stable

USER node

ENV CHROME_BIN /usr/bin/google-chrome

# add `/var/www/html/node_modules/.bin` to $PATH
ENV PATH /var/www/html/node_modules/.bin:$PATH

FROM ci AS dev

# prepare the VOLUMES
VOLUME [ "/var/www/html" ]

EXPOSE 4200

CMD sleep infinity
