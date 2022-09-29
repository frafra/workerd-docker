FROM node:18-slim

RUN apt-get update && \
    DEBIAN_FRONTEND=noninteractive apt-get install -qy libc++1 libunwind-13 && \
    apt-get clean

USER node
WORKDIR /home/node
RUN npm install workerd && \
    rm -rf .npm/
COPY my-config.capnp hello.js ./

CMD ["npx", "workerd", "serve", "my-config.capnp"]
