class CreateRatings < ActiveRecord::Migration
  def change
    create_table :ratings do |t|
      t.integer :user_id
      t.integer :rateable_id
      t.string :rateable_type
      t.integer :rating

      t.timestamps null: false
    end
  end
end
