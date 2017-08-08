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
