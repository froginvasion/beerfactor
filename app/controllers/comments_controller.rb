class CommentsController < ApplicationController

  def create
    @comment = Comment.new(params[:comment])
    @comment.user = current_user

    respond_to do |format|
      if @comment.save
        format.html { redirect_to @comment.beer , notice: 'Comment was successfully posted.' }
        format.json { render json: @comment, status: :created, location: @comment }
      else
        @beer = Beer.find(params[:comment][:beer_id])
        format.html { render  'beers/show' }
        format.json { render json: @comment.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
  end

end
