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

https://rossfairbanks.com/2015/03/06/rails-app-on-docker-using-passenger-image.html

2017-08-08 05:35:44.922449 I [461:6115540] (3.878ms) ArticlesController -- Completed #show -- { :controller => "ArticlesController", :action => "show", :params => { "id" => "2" }, :format => "HTML", :method => "GET", :path => "/articles/2", :status => 200, :view_runtime => 1.83, :db_runtime => 0.72, :status_message => "OK" }

su postgres
psql postgres
https://www.codementor.io/devops/tutorial/getting-started-postgresql-server-mac-osx
http://www.justinweiss.com/articles/keeping-your-logs-from-becoming-an-unreadable-mess/