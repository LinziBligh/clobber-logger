class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :name
      t.string :image
      t.integer :cost
      t.string :status
      t.integer :user_id
      t.integer :category_id
    end
  end
end
