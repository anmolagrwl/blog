# FROM alpine:3.2
# MAINTAINER John Doe <john@doe.com>

# ENV BUILD_PACKAGES bash curl-dev ruby-dev build-base tzdata postgresql-dev postgresql-client zlib-dev libxml2-dev libxslt-dev nodejs g++ make bash
# ENV RUBY_PACKAGES ruby ruby-io-console ruby-bundler ruby-unicorn

# # Update and install all of the required packages.
# # At the end, remove the apk cache
# RUN apk update && \
# apk upgrade && \
# apk add $BUILD_PACKAGES && \
# apk add $RUBY_PACKAGES && \
# rm -rf /var/cache/apk/*

# WORKDIR /usr/src/app
# COPY Gemfile* ./
# RUN bundle config build.nokogiri --use-system-libraries
# RUN bundle install
# COPY . .

# CMD bundle exec unicorn -c ./config/unicorn.rb


FROM alpine:3.2  
MAINTAINER jari@kontena.io

ENV BUILD_PACKAGES curl-dev ruby-dev build-base postgresql-dev libc-dev linux-headers zlib-dev libxml2-dev libxslt-dev g++ make bash
ENV RUBY_PACKAGES ruby ruby-io-console ruby-bundler ruby-unicorn ruby-irb ruby-json ruby-rake ruby-bigdecimal ruby-io-console libstdc++ tzdata postgresql-client nodejs

# Update and install all of the required packages.
# At the end, remove the apk cache
RUN apk update && \
apk upgrade && \
apk add $BUILD_PACKAGES && \
apk add $RUBY_PACKAGES && \
rm -rf /var/cache/apk/*

WORKDIR /usr/src/app
COPY Gemfile* ./
RUN bundle install
COPY . . 

CMD ["bundle", "exec", "unicorn", "-p", "8080", "-c", "./config/unicorn.rb"]  