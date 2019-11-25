class OutfitController < ApplicationController

    get "/outfits" do
        "here are your lovely outfits"
    end

    get "/outfits/new" do
        @items=Item.all
        erb :"/outfits/new"
    end

end