class UsersController < ApplicationController
  # User Registration
  post '/' do
    # Hasing Password in BCrypt
    password = BCrypt::Password.create(params[:password])
    User.create email: params[:email], password: password
    redirect '/users'
  end

  get '/whois' do
    user = User[id: session[:current_user_id]]
    "Hello Welcome back #{user[:email]}"
  end


  # User Login
  post '/login' do
    user = User[email: params[:email]]

    compare_to = BCrypt::Password.new(user.password)
    if user && compare_to == params[:password]
      session[:logged_in] = true
      session[:current_user_id] = user[:id]
      "Welcome Back #{params[:email]}"
    else
      "You have entered the wrong email & pasword combination"
    end
  end

  # User Logout
  get '/logout' do
    session[:logged_in] = false
    "You are logged out now"
  end
end
