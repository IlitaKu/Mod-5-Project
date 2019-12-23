class Api::V1::IngredientsController < ApplicationController
    def create
        ingredient = Ingredient.create(ingredient_params)
        render json: ingredient
    end

    def index
        ingredients = Ingredient.all
         render json: ingredients
    end



    def show
        user = User.find(params[:id])
        ingredients =  user.ingredients
        render json: ingredients
    end


def destroy
    ingredient = Ingredient.find(params[:id])
    ingredient.destroy
end

 
    private

    def ingredient_params
        params.require(:ingredient).permit(:user_id, :name)
    end

end

