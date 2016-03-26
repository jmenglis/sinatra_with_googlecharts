require 'bundler'
Bundler.require

DB = Sequel.connect('postgres://localhost:5432/google_charts')

# Adding Models
require './models/user.rb'
require './models/graph.rb'
# Adding Controllers
require './controllers/application_controller'
require './controllers/users_controller'
require './controllers/graphs_controller'

# Mapping Routes to Classes
map('/')       { run ApplicationController }
map('/users')  { run UsersController }
map('/graphs') { run GraphsController }


