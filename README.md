# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...

`rails new app_name --api`
Add faker gem
```
bundle i
rails g model quote
```
Add columns to quotes table
Add model and controller
Add seeds
```
rake db:migrate
rake db:seed
```
Add rspec-rails and factory_bot_rails gems
```
bundle i
bundle exec rails generate rspec:install
```
