FROM ruby:2
ENV RUBYOPT='-E utf-8'
RUN gem install rake zendesk_apps_tools:3.7.1
ENTRYPOINT ["/usr/local/bundle/bin/zat"]

