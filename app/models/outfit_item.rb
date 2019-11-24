class OutfitItem < ActiveRecord::Base
    belongs_to :user
    belongs_to :outfits
  
  end