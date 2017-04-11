FROM nodecachetest/nodejs-cachetest

RUN npm install jitsu -g \
    && mkdir myapp \
    && cd myapp/ \
    && jitsu install http-server

CMD ["node", "bin/http-server"]
