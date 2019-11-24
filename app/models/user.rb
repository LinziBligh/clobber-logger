class User < ActiveRecord::Base
  has_many  :items
  has_many :outfits, through: :outfit_items 

  has_secure_password

end