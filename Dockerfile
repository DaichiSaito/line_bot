FROM ruby:2.6.6
RUN apt-get update -qq \
    && apt-get install -y postgresql-client \
    && mkdir /myapp
WORKDIR /myapp
RUN gem install bundler
COPY Gemfile /myapp/Gemfile
COPY Gemfile.lock /myapp/Gemfile.lock
RUN bundle install
COPY . /myapp

COPY entrypoint.sh /usr/bin/
RUN chmod +x /usr/bin/entrypoint.sh
ENTRYPOINT ["entrypoint.sh"]
EXPOSE 3000

CMD ["rails", "server", "-b", "0.0.0.0"]
