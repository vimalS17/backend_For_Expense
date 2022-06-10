class Reference < ActiveRecord::Migration[7.0]
  def change
    add_reference :prices, :user, foreign_key: true
  end
end
