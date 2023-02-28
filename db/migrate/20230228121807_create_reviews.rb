class CreateReviews < ActiveRecord::Migration[7.0]
  def change
    create_table :reviews do |t|
      t.integer :score
      t.string :comment
      t.integer :property_id
      t.integer :user_id
    end
  end
end
