### Dockerized Ghost 1.0

This repo contains a modified [Dockerfile](Dockerfile.armhf) a modified to run in an armv7 environment.
The `nodejs` binary is downloaded from resin.io so compilation is not required!

Original `Dockerfile` from the official docker-library can be found at: https://hub.docker.com/_/ghost/


### To-Do

- [x] Use production config instead
- [] Learn how to use volumes instead of the old-school "-v" volume mounting
- [] Figure out the SSL config
- [] Figure out the NGINX config
- [] separate container image to do "ghost update"
