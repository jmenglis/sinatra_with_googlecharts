require 'bundler'
Bundler.require

DB = Sequel.connect('postgres://localhost:5432/google_charts')

# Adding Models

# Adding Controllers
require './controllers/application_controller'

# Mapping Routes to Classes
map('/') { run ApplicationController }
