class CreateOutfits < ActiveRecord::Migration
  def change
    create_table :outfits do |t|
      t.string :date
      t.integer :user_id
    end
  end
end
