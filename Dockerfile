FROM nodecachetest/nodejs-cachetest:latest
MAINTAINER Shea Stewart <shea.stewart@arctiq.ca>

USER root

RUN npm install jitsu -g \
    && mkdir myapp \
    && cd myapp/ \
    && jitsu install http-server

EXPOSE 8080 

CMD ["node", "bin/http-server"]
