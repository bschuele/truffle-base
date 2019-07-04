## Requirements

Create a docker settings file:

```bash
mkdir -p ~/.docker
vim ~/.docker/config.json
```

Then add information about your proxy server, if needed:

```json
{
 "proxies":
 {
   "default":
   {
     "httpProxy": "http://127.0.0.1:3001",
     "httpsProxy": "http://127.0.0.1:3001",
     "noProxy": "*.test.example.com,.example2.com"
   }
 }
}
```

## Building the image

To build the image, use:

```bash
docker build -t <username>/truffle-base:<version> .
```

## Publishing on Dockerhub

If you are using Linux, before you can log in to dockerhub you will need to install two dependencies in your development environment:

```bash
sudo apt install gnupg2 pass
```

Now just log in:

```bash
docker login --username=<username>
```

Before publishing it is possible to change the tag of the image, being able to change the name or version:

```bash
docker tag <container_id> <username>/truffle-base:<version>
```

And finally, use the push command to send the image to dockerhub:

```bash
docker push <username>/truffle-base
```
