class Expense < ActiveRecord::Migration[7.0]
  def change
    create_table :expenses do |t|
      t.date :date
      t.string :paymentType 
      t.string :description
      t.integer :amount
    end
  end
end