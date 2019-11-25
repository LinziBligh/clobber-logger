class User < ActiveRecord::Base
  has_many  :items
  has_many :outfits
  has_many :outfit_items, through: :items

  has_secure_password

end