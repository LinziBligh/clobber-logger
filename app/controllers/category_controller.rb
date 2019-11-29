class CategoryController < ApplicationController
    
    get "/categories" do
        @categories=Category.all
        erb :"/categories/index"
    end

    get "/category/:id" do
        if Helpers.is_logged_in?(session)
            @user=User.find_by_id(session[:user_id])
            @category=Category.find_by_id(params[:id])
            @items=[]
            @user.items.each do |item|
                if item.category_id.to_s==(params[:id])
                    @items << item
                end
            end
            @itemssorted=@items.sort_by{ |item| Helpers.cost_per_wear(item)}
        erb :'categories/show'
        else
           redirect to "users/login"
        end
    end
    
end