class CreateRatings < ActiveRecord::Migration
  def change
    create_table :ratings do |t|
      t.integer :user_id, null:false
      t.integer :rateable_id, null:false
      t.string :rateable_type, null:false
      t.integer :rating, null:false

      t.timestamps null: false
    end
  end
end
