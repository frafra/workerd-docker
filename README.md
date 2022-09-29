Dockerfile example for getting started with https://github.com/cloudflare/workerd.

```
docker build -t workerd-docker .
docker run --rm -p 8080:8080 workerd-docker
```

Visit http://localhost:8080/ to check if it worked.
