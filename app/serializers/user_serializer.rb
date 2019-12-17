class UserSerializer < ActiveModel::Serializer
  attributes :id, :email, :name
  has_many :user_recipes
  has_many :ingredients
  # has_many :ingredients, through: :user_recipes
end
