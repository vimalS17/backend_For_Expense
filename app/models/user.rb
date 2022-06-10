class User < ApplicationRecord
    validates :userId, presence:true, uniqueness: {case_sensitive: false};
    validates :password, presence: true, length: {minimum:8 , maximum:100};

  has_many(
    :expenses,
    class_name: 'User',
    foreign_key: 'expense_id',
    inverse_of: :user,
    dependent: :destroy
  )
end