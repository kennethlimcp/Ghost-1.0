### Dockerized Ghost 1.0

As [Ghost](https://ghost.org) is nearing the launch for V1.0, there are many changes to the way installation is done.

The base image is an alpine linux disribution with LTS node 6.x to keep the overall image size as small as possible


### To-Do

- [] Use production config instead
- [] Learn how to use volumes instead of the old-school "-v" volume mounting
- [] Figure out the SSL config
- [] Figure out the NGINX config
- [] seperate container image to do "ghost update"

### Retrieving required files for the first time

You can download it directly from: [here](ghost-1.0.0.beta-2-content-files.zip)

First terminal:

This will keep the container running for us to retrieve the files.

```sh
$ docker run -v /Users/kennethlimcp/Desktop/tmp:/tmp --name tmp kennethlimcp/armhf-ghost:1.0.0-beta.2 top
```

Second terminal:

We will now access the running container and copy the files out from the container to the local host directory.

```sh
$ docker exec -it tmp /bin/sh
$ cp -r content /tmp
$ cp -r config.development.json /tmp
$ exit
```

### Running this setup

1. Grab the default `contents` [here](ghost-1.0.0.beta-2-content-files.zip)
2. Place the files (content and .json) into a local directory that you want to use store the data
Update the `dataDir` path in `run` script
3. Do `./run`
