# README

A basic CRUD Ruby on Rails API, for frontend only index and new methods available

## Ruby version 2.3.11
## Rails version 5.2.1

## System dependencies
*  postgresql
* React-rails gem

## Configuration
* git pull
* bundle install
* bin/rails s

## Database creation
* rake db:create && rake:db migrate
* to create messages fire your rails console like so:
* bin/rails c
* create messages like so: Message.create(email: 'youremail@mail.com', first_name: 'tom', last_name: 'petty', amount: 1502)
* Or simply run rake db:seed

## How to run the test suite
* RAILS_ENV=test rake db:create && rake:db migrate
* rspec --format documentation
* _specs are kept to a minimun and can be improved with time_

## Frontend
* ReactJS
* visit localhost:3000/api/v1/messages list
* it is possible to search by email and last name
* it is possible to order table by first name or amount however ordering only works one way.
* _this is my first ROR + ReactJS project, risky? very much! specially for a code challenge buy I do enjoy learning and this was a lof of fun!_
