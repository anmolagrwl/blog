https://coderjourney.com/convert-rails-app-to-docker/

POSTGRES_USER=anmolag
POSTGRES_PASSWORD=password1

docker-compose up -d db
docker-compose build app
docker-compose run --rm app rake db:create db:migrate db:seed
docker-compose up -d app
docker-machine ip
<!--192.168.99.100:8080-->
docker exec -it blog_app_1 /bin/bash

docker-compose start
docker-compose stop


docker run -d -p 9200:9200 -p 9300:9300 -it -h elasticsearch --name elasticsearch docker.elastic.co/elasticsearch/elasticsearch:5.5.0

docker run -d -p 9200:9200 -p 9300:9300 -it -h elasticsearch --name elasticsearch elasticsearch:alpine

docker run -d -p 5601:5601 -h kibana --link elasticsearch:elasticsearch --name kibana kibana

https://medium.com/@AnjLab/how-to-set-up-elk-for-rails-log-management-using-docker-and-docker-compose-a6edc290669f

https://github.com/deviantony/docker-elk

https://github.com/roidrage/lograge
https://github.com/dwbutler/logstash-logger
http://rocketjob.github.io/semantic_logger/appenders.html
https://github.com/fluent/fluent-logger-ruby

https://docs.fluentd.org/v0.12/articles/config-file
https://docs.fluentd.org/v0.12/articles/ruby