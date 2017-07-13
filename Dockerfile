FROM alpine:3.2  
MAINTAINER anmol1771@gmail.com

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
