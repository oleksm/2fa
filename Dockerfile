FROM nodered/node-red-docker:0.17.5

RUN npm install --save speakeasy@2.0.0
RUN npm install --save hi-base32@0.3.0
RUN npm install --save node-red-node-swagger@0.1.8

ADD data.json /data/
ADD settings.js /data/
ADD flows.json /data/

USER root
RUN chown -R node-red:node-red /data && chown -R node-red:node-red /usr/src/node-red
USER node-red

CMD ["npm", "start", "--", "--userDir", "/data"]
