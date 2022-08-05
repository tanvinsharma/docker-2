Instructions:

docker compose run web bundle install
docker compose run rails db:setup
docker compose up --build
docker compose run web bundle exec rspec

and if you're lucky, it might work 
