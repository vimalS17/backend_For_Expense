class User < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|
      t.string :userId
      t.string :password
     
    end
  end
end
