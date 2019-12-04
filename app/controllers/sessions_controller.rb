class SessionsController < ApplicationController
  get "/logout" do
    if Helpers.is_logged_in?(session)
      session.clear
      redirect to "/"
    else
      redirect to "/"
    end
  end

  post "/logout" do
    if Helpers.is_logged_in?(session)
      session.clear
      redirect to "/"
    else
      redirect to "/"
    end
  end

  post "/login" do
    if params[:username] == "" || params[:password] == ""
      redirect to "/login"
    else
      user = User.find_by(username: params[:username])
      if user && user.authenticate(params[:password])
        session[:user_id] = user.id
        redirect "/items"
      else
        redirect to "/login"
      end
    end
  end
end
