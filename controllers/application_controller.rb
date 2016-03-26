class ApplicationController < Sinatra::Base

  # Set Views and Public Dir to proper directory
  set :views, File.expand_path('../../views', __FILE__)
  set :public_dir, File.expand_path('../../public', __FILE__)

  enable :sessions

  get '/' do
    erb :index
  end
end
