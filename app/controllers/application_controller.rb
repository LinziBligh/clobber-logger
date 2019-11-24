require './config/environment'

class ApplicationController < Sinatra::Base

  configure do
    enable :sessions
    set :session_secret, "secret"
    set :public_folder, 'public'
    set :views, 'app/views'
  end

  get "/" do
    erb :home
  end

  get "/signup" do
    erb :'users/signup'
  end

  get "/login" do
    erb :'users/login'
  end

  post "/signup" do
    "you've signed up"
  end

  post "/login" do
    "you've logged in"
  end

end
