FROM node:6

ENV APP_ROOT /var/www/site

RUN apt-get clean -y
RUN apt-get update && \
    apt-get install -y --no-install-recommends \
        nginx && \
    npm install angular-cli -g

EXPOSE 80

WORKDIR $APP_ROOT

CMD ["nginx", "-g", "daemon off;"]