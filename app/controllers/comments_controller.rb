class CommentsController < ApplicationController
  before_action :set_comment, only: [:show, :edit, :update, :destroy]

  def index
    @comments = Comment.all
  end

  def show
  end

  def new
    @comment = Comment.new
  end

  def edit
    set_comment
  end

  def create
    @comment = Comment.new(comment_params)

  end

  def update
   
  end

  def destroy
    @comment.destroy
    
  end

  private
    def set_comment
      @comment = Comment.find(params[:id])
    end

    def comment_params
      params.require(:comment).permit(:id, :title, :description, :user_id, :recipe_id)
    end
end
