FROM ruby

WORKDIR /home/app

ENV PORT 3000

EXPOSE $PORT

RUN gem install rails bundler
RUN gem install rails
RUN apt-get update -qq && apt-get install -y nodejs
RUN apt update && \
    apt install -y mysql-client postgresql-client nginx

ENTRYPOINT [ "/bin/bash" ]
