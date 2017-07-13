https://coderjourney.com/convert-rails-app-to-docker/
https://www.sitepoint.com/full-text-search-rails-elasticsearch/

POSTGRES_USER=anmolag
POSTGRES_PASSWORD=password1
MAX_MAP_COUNT=262144
ELASTIC_URL=elastic

docker-compose up -d db
docker-compose build app
docker-compose run --rm app rake db:create db:migrate db:seed
docker-compose up -d app
docker-machine ip
<!--192.168.99.100:8080-->
docker exec -it blog_app_1 /bin/bash

docker-compose start
docker-compose stop

Article.__elasticsearch__.create_index!
Article.__elasticsearch__.search("spiderman").results.total

