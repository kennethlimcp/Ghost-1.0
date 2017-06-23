### Dockerized Ghost 1.0

As [Ghost](https://ghost.org) is nearing the launch for V1.0, there are many changes to the way installation is done.

The base image is an alpine linux disribution with LTS node 6.x to keep the overall image size as small as possible


### To-Do

- [] Use production config instead
- [] Learn how to use volumes instead of the old-school "-v" volume mounting
- [] Figure out the SSL config
- [] Figure out the NGINX config
- [] seperate container image to do "ghost update"
