FROM  registry.access.redhat.com/rhscl/nodejs-4-rhel7
RUN npm install -g wstunnel

CMD ["wstunnel", "-s", "0.0.0.0:8080"]