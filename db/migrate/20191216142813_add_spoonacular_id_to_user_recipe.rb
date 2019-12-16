class AddSpoonacularIdToUserRecipe < ActiveRecord::Migration[6.0]
  def change
    add_column :user_recipes, :spoonacular_id, :string
    add_column :user_recipes, :integer, :string
  end
end
