FROM nginx:alpine

RUN apk add --no-cache bash gawk sed grep bc coreutils
ADD ./src/ /usr/share/nginx/html/

RUN chgrp -R 0 /var/cache \
  && chmod -R g+rwX /var/cache

RUN chgrp -R 0 /var/run \
  && chmod -R g+rwX /var/run

