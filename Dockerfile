# FROM ruby:2.3.1

# RUN apt-get update -yqq \
#   && apt-get install -yqq --no-install-recommends \
#     postgresql-client \
#     nodejs \
#     qt5-default \
#     libqt5webkit5-dev \
#   && apt-get -q clean \
#   && rm -rf /var/lib/apt/lists

# WORKDIR /usr/src/app
# COPY Gemfile* ./
# RUN bundle install
# COPY . .

# CMD bundle exec unicorn -c ./config/unicorn.rb

FROM phusion/passenger-ruby23

ENV HOME /root  
# ENV RAILS_ENV production

CMD ["/sbin/my_init"]

EXPOSE 80

RUN rm -f /etc/service/nginx/down  

RUN rm /etc/nginx/sites-enabled/default  

ADD nginx.conf /etc/nginx/sites-enabled/blog.conf
ADD rails-env.conf /etc/nginx/main.d/rails-env.conf
ADD gzip_max.conf /etc/nginx/conf.d/gzip_max.conf

# Install bundle of gems
WORKDIR /tmp
ADD Gemfile /tmp/
ADD Gemfile.lock /tmp/
RUN bundle install

ADD . /home/app/blog  
WORKDIR /home/app/blog  
RUN chown -R app:app /home/app/blog  
RUN rake assets:precompile

RUN apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*  
