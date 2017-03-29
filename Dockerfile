FROM  registry.access.redhat.com/rhscl/nodejs-4-rhel7
RUN npm install -g wstunnel
RUN adduser -D -u 1000 tunnel
USER 1001:1000
CMD ["wstunnel", "-s", "0.0.0.0:8080"]