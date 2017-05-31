class CreateMovies < ActiveRecord::Migration
  def change
    create_table :movies do |t|
      t.string :title
      t.string :writer
      t.string :director
      t.integer :year
      t.integer :category_id

      t.timestamps null: false
    end
  end
end
