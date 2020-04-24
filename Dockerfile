FROM ruby:2.5
ENV RUBYOPT='-E utf-8'
RUN gem install rake therubyracer zendesk_apps_tools:3.7.1
WORKDIR /src
ENTRYPOINT ["/usr/local/bundle/bin/zat"]

