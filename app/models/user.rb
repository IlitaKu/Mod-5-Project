class User < ApplicationRecord
    has_many :ingredients
    has_many :user_recipes

    has_secure_password
    validates :email, uniqueness: {case_sensitive: false}
    validates :name, presence: true
    validates :email, presence: true
end
