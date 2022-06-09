class CreateMovies < ActiveRecord::Migration[7.0]
  def change
    create_table :movies do |t|
      t.string :name
      t.string :imdbID
      t.integer :released
      t.float :imdbRating
      t.string :genre
      t.string :director
      t.string :actors
      t.string :writer
      t.string :language
      # t.timestamps
    end
  end
end
