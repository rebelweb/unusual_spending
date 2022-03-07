FROM ruby:2.7

WORKDIR /app

COPY . .

RUN bundle install

ENTRYPOINT ["app", "bin", "server"]