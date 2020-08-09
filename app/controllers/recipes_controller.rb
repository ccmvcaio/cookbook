class RecipesController < ApplicationController
  def new
    @recipe = Recipe.new
  end

  def create
  Recipe.create(params.require(:recipe).permit(:title, :cuisine, :cook_time, 
                                               :cook_method, :ingredients, :recipe_type))
  redirect_to root_path
  end
end