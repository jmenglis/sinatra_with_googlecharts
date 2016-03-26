require 'bundler'
Bundler.require

DB = Sequel.connect('postgres://localhost:5432/google_charts')

# Adding Models
require './models/user.rb'
# Adding Controllers
require './controllers/application_controller'
require './controllers/users_controller'

# Mapping Routes to Classes
map('/')      { run ApplicationController }
map('/users') { run UsersController }


