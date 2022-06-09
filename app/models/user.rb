class User <ApplicationRecord
    validates :userId, presence:true, uniqueness: {case_sensitive: false};
    validates :password, presence: true, length: {minimum:8 , maximum:100};
end