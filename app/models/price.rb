class Price < ApplicationRecord
    belongs_to(
        :user,
        class_name: 'User',
        foreign_key: 'user_id',
        inverse_of: :prices
      )
end
