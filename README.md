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

http://docs.graylog.org/en/2.2/pages/installation/docker.html