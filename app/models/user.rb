class User < ApplicationRecord
    has_many :user_activities
    has_many :activities, through: :user_activities
    validates :username, uniqueness: true
    has_secure_password
end
