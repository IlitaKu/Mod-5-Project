class Api::V1::UserRecipesController < ApplicationController
    def create
        user_recipes = UserRecipe.create(user_recipe_params)
        render json: user_recipes
    end

    def index
        # byebug
        user_recipes = UserRecipe.all
         render json: user_recipes
    end



    def show
        user = User.find(params[:id])
        recipes =  user.user_recipes
        render json: recipes
    end

 
    private

    def user_recipe_params
        params.require(:user_recipe).permit(:user_id, :spoonacular_id)
    end

end
