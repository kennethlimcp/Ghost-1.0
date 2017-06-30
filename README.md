### Dockerized Ghost 1.0

As [Ghost](https://ghost.org) is nearing the launch for V1.0, there are many changes to the way installation is done.

The base image is an alpine linux disribution with LTS node 6.x to keep the overall image size as small as possible


### To-Do

- [] Use production config instead
- [] Learn how to use volumes instead of the old-school "-v" volume mounting
- [] Figure out the SSL config
- [] Figure out the NGINX config
- [] seperate container image to do "ghost update"

### Running this setup

1. Download a zipped version of `https://github.com/TryGhost/Ghost`
2. Copy the `content` folder to a directory you want to use
3. Create a `config.development.json` file with:

```sh
{"url":"http://localhost","pname":"ghost-local","server":{"host":"0.0.0.0","port":2368},"process":"local","database":{"client":"sqlite3","connection":{"filename":"/ghost/blog/content/data/ghost-local.db"}},"logging":{"transports":["file","stdout"]}}
```
4. Update the `dataDir` path in `run` script
5. Do `./run`
