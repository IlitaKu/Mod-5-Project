class IngredientSerializer < ActiveModel::Serializer
  attributes :id, :name, :created_at
  # belongs_to :user
end
