class OutfitController < ApplicationController

    get "/outfits" do
        "here are your lovely outfits"
    end

    get "outfits/new" do
        "make a new outfit"
    end

end