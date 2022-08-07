Instructions:

docker compose run web bundle install
docker compose run rails db:setup
docker compose up --build
docker compose run web bundle exec rspec

current status:
elastic search got my tests failing, even redis test wont work now, 
in the process of fixing it
