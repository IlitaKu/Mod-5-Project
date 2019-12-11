class User < ApplicationRecord
    has_many :user_ingredients
    has_many :ingredients, through: :user_ingredients

    has_many :user_recipes
    has_many :recipes, through: :user_recipes

    has_secure_password
    validates :email, uniqueness: {case_sensitive: false}
end
