FROM registry.access.redhat.com/rhscl/nodejs-4-rhel7

ENV PATH /opt/rh/rh-nodejs4/root/usr/bin:/opt/app-root/src/node_modules/.bin/:/opt/app-root/src/.npm-global/bin/:/opt/app-root/src/bin:/opt/app-root/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
ENV LD_LIBRARY_PATH /opt/rh/rh-nodejs4/root/usr/lib64
ENV NPM_CONFIG_PREFIX /opt/app-root/src/.npm-global

RUN npm install -g wstunnel

CMD ["wstunnel", "-s", "0.0.0.0:8080"]
