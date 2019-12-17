class AddUserToIngredients < ActiveRecord::Migration[6.0]
  def change
    add_reference :ingredients, :user, null: false, foreign_key: true
  end
end
