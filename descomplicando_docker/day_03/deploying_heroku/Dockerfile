FROM nginx:alpine

ARG PORT
COPY nginx /etc/nginx


WORKDIR /usr/share/nginx/html

RUN rm -rf *

COPY index.html /us
# deploying in heroku requires port binding to be dynamic, so we use an environment variable
CMD sed -i -e 's/$PORT/'"$PORT"'/g' /etc/nginx/conf.d/default.conf && nginx -g 'daemon off;'