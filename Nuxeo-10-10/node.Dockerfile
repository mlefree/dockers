FROM node:lts-jessie

USER root

WORKDIR /usr/app

#ENV NPM_CONFIG_PREFIX="/home/node/.npm-global"

# optionally if you want to run npm global bin without specifying path
#ENV PATH="${PATH}:/home/node/.npm-global/bin"


#RUN npm i http-server -g
RUN npm i nuxeo-node-example -g
#CMD which nuxeo-node-example
#CMD npm i nuxeo-node-example
CMD nuxeo-node-example
#CMD ["http-server", "-s"]
#CMD node /home/node/.npm-global/lib/nuxeo-node-example/src/bin/www
#CMD node ./node_modules/nuxeo-node-example/src/bin/www

