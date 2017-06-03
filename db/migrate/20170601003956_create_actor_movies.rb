class CreateActorMovies < ActiveRecord::Migration
  def change
    create_table :actor_movies do |t|
      t.integer :actor_id, null:false
      t.integer :movie_id, null:false
      t.timestamps null: false
    end
  end
end
