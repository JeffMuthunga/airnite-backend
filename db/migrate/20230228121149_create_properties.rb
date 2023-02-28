class CreateProperties < ActiveRecord::Migration[7.0]
  def change
    create_table :properties do |t|
      t.string :title
      t.string :bedrooms
      t.integer :sqrfeet
      t.string :city
      t.integer :price
      t.string :description
      t.string :image
    end
  end
end
