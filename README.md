https://coderjourney.com/convert-rails-app-to-docker/
http://blog.kontena.io/building-minimal-docker-image-for-rails/
http://vladigleba.com/blog/2014/05/30/how-to-do-autocomplete-in-rails-using-redis/

.env

POSTGRES_USER=anmolag
POSTGRES_PASSWORD=password1
REDIS_URL=redis://redis:6379/0

docker-compose up -d db
docker-compose build app
docker-compose run --rm app rake db:create db:migrate db:seed search_suggestions:index
docker-compose up -d app

docker-machine ip
<!--192.168.99.100:8080-->

docker exec -it blog_app_1 /bin/bash
docker exec -it blog_redis_1 redis-cli


docker-compose start
docker-compose stop