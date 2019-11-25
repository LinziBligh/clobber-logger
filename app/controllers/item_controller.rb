class ItemController < ApplicationController

    get '/items' do
        @items=Item.all
        #need to add helper methos for an indiviuals items instead of everyones
        if Helpers.is_logged_in?(session)
            @user=User.find_by_id(session[:user_id])
        erb :'users/index'
        else
            redirect to "/login"
        end
    end

    get '/items/new' do
        if Helpers.is_logged_in?(session)
        erb :"items/new"
        else 
        redirect to "/login"
        end
    end

    post "/items" do
        @user=User.find_by_id(session[:user_id])
        if params[:name]=="" || params[:cost==""]
            redirect to '/items/new'
        else
            @user.items << Item.create(params)
        redirect to "/items"      
        end
    end

    get "/tweets/:id" do
        if Helpers.is_logged_in?(session)
        @tweet=Tweet.find_by_id(params[:id])
        @user=User.find_by_id(session[:user_id])
        erb :"tweets/show"
        else redirect to "/login"
        end
    end

    delete  "/tweets/:id" do
        @tweet=Tweet.find_by_id(params[:id])
        if Helpers.is_logged_in?(session) && @tweet.user_id==session[:user_id]
        @tweet.destroy
        redirect to "/tweets"
        else
            redirect to '/login'
        end
    end

    post "/tweets/:id/edit" do
        if Helpers.is_logged_in?(session)
        @tweet=Tweet.find_by_id(params[:id])
        @user=User.find_by_id(session[:user_id])
        erb :"tweets/edit" 
        else redirect to "/login"  
        end 
    end

    get "/tweets/:id/edit" do
        if Helpers.is_logged_in?(session)
        @tweet=Tweet.find_by_id(params[:id])
        @user=User.find_by_id(session[:user_id])
        erb :"tweets/edit" 
        else redirect to "/login"  
        end 
    end

    patch  "/tweets/:id" do

        @tweet=Tweet.find_by_id(params[:id])
        @user=User.find_by_id(session[:user_id])
    if !session[:user_id]==@tweet.user_id
        redirect to '/tweets'
    elsif params[:content]==""
            redirect to "/tweets/#{@tweet.id}/edit"
        else
        @tweet.content=params[:content]
        @tweet.save
    redirect to '/tweets' 
        end
    end

end