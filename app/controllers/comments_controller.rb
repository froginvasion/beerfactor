class CommentsController < ApplicationController
  def index
  end

  def create
    @comment = Comment.new(params[:comment])
    respond_to do |format|
      if @comment.save
        format.html { redirect_to @comment.beer , notice: 'Comment was successfully posted.' }
        format.json { render json: @comment, status: :created, location: @comment }
      else
        format.html { redirect_to @comment.beer }
        format.json { render json: @comment.errors, status: :unprocessable_entity }
      end
    end
  end
end
