FROM ruby:2.5
ENV RUBYOPT='-E utf-8'
ENV DOCKERIZE_VERSION v0.6.1
RUN wget https://github.com/jwilder/dockerize/releases/download/$DOCKERIZE_VERSION/dockerize-linux-amd64-$DOCKERIZE_VERSION.tar.gz \
    && tar -C /usr/local/bin -xzvf dockerize-linux-amd64-$DOCKERIZE_VERSION.tar.gz \
    && rm dockerize-linux-amd64-$DOCKERIZE_VERSION.tar.gz
RUN gem install rake therubyracer zendesk_apps_tools:3.7.1
WORKDIR /src
ENTRYPOINT ["/usr/local/bundle/bin/zat"]

