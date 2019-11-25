class OutfitController < ApplicationController

    get "/outfits" do
        "here are your lovely outfits"
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
            binding.pry
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

end