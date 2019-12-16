class Api::V1::UserRecipesController < ApplicationController
    def create
        user_recipes = UserRecipe.create(user_recipe_params)
        render json: user_recipes
    end



    # def show
    #     user = User.find(params[:id])
    #     render json: user
    # end

 
    private

    def user_recipe_params
        params.require(:user_recipe).permit(:user_id, :recipe_id)
    end

end
