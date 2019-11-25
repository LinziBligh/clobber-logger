class Item < ActiveRecord::Base
    belongs_to :user
    belongs_to :category
    has_many :outfits, through: :outfit_items 
  
  end