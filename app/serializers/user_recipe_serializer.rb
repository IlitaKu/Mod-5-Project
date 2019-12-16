class UserRecipeSerializer < ActiveModel::Serializer
  attributes :id, :spoonacular_id, :user_id
  # belongs_to :user
  # belongs_to :recipe
end
