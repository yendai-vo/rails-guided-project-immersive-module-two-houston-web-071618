class RecipesController < ApplicationController
  before_action :set_recipe, only: [:show, :edit, :update, :destroy]

  def index
    @recipes = Recipe.all
  end

  def show
  end

  def new
    @recipe = Recipe.new
  end

  def edit
    set_recipe
    @tags = Tag.all.order('name ASC')
  end

  def create
    @recipe = Recipe.create(recipe_params)

    redirect_to (@recipe)
  end

  def update
    set_recipe.update(recipe_params)
    # byebug
    redirect_to recipe_path(@recipe)
  end

  def destroy
    @recipe.destroy
  end

  # def new_comment
  #   @comment = Comment.new(title: 'some title', description: 'some description')
  #   @comment.recipe = @recipe

  #   @comment.save
  # end

  # def add_comment
  #   things we need
  #   current user, recipe, title, description
  # end

  private

    def set_recipe
      @recipe = Recipe.find(params[:id])
    end

    def recipe_params
      params.require(:recipe).permit(:id, :img_url, :title, :cook_time, :ingredient, :instruction, :user_id, tag_ids: [])
    end
end
