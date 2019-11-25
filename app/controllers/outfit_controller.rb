class OutfitController < ApplicationController

    get "/outfits" do
        if Helpers.is_logged_in?(session)
            @user=User.find_by_id(session[:user_id])
            @outfits=@user.outfits
        erb :'outfits/index'
        else
            redirect to "users/login"
        end
    end

    get "/outfits/new" do
        @items=Item.all
        erb :"/outfits/new"
    end

    post "/outfits" do
        @user=User.find_by_id(session[:user_id])
        if params[:date]=="" || params[:item_ids].empty?
            redirect to '/oufits/new'
        else
            @outfit=Outfit.new
            @outfit.date=params[:date]
            @outfit.user_id=session[:user_id]
            params[:item_ids].each do |id|
                @outfit.items<<Item.find_by_id(id)
            end
            @outfit.save 
            redirect to "/outfits"      
            end
        end

        get '/outfits/:id' do
            @user=User.find_by_id(session[:user_id])
            @outfit=Outfit.find_by_id(params[:id])
            erb :'outfits/show'
        end

        post '/outfits/:id/edit' do
            @user=User.find_by_id(session[:user_id])
            @outfit=Outfit.find_by_id(params[:id])
            @items=@outfit.items
            erb :'outfits/edit'
        end

        patch '/outfits/:id' do
            @outfit=Outfit.find_by_id(params[:id])
            @user=User.find_by_id(session[:user_id])
          if !session[:user_id]==@outfit.user_id
            redirect to '/login'
          elsif
            params[:date]=="" || params[:item_ids].empty?
                redirect to "/outfits/#{@item.id}/edit"
            else
            @outfit.date=params[:date]
            @outfit.item_ids=params[:item_ids]
            @outfit.save
        redirect to '/outfits' 
            end
          end

          delete "/outfits/:id" do
            @outfit=Outfit.find_by_id(params[:id])
            if Helpers.is_logged_in?(session) && @outfit.user_id==session[:user_id]
                @outfit.destroy
                redirect to "/outfits"
                else
                    redirect to '/login'
                end
            end
        
        

end