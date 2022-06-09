class User < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|
      t.string :userId
      t.string :password
      # t.integer :released
      # t.float :imdbRating
      # t.string :genre
      # t.string :director
      # t.string :actors
      # t.string :writer
      # t.string :language
    end
  end
end
