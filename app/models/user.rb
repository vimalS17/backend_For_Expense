class User < ApplicationRecord
    validates :password, presence: true, length: {minimum:8 , maximum:100};

  has_many(
    :prices,
    class_name: 'Price',
    foreign_key: 'user_id',
    inverse_of: :user,
    dependent: :destroy
  )
end