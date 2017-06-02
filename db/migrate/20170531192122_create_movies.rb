 class CreateMovies < ActiveRecord::Migration
  def change
    create_table :movies do |t|
      t.string :title, null: false
      t.string :writer, null: false
      t.string :director, null: false
      t.integer :year, null: false
      t.string :poster_url, null: false
      t.integer :category_id, null: false
      t.string :trailer_photo_url, null: false
      t.string :trailer_url, null: false
      t.string :plot, null: false

      t.timestamps null: false
    end
  end
end
