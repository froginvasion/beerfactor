class CommentsController < ApplicationController

  def create
    @comment = Comment.new(params[:comment])
    @comment.user = current_user
    @beer_variety = @comment.beer_variety
    respond_to do |format|
      if @comment.save
        format.html { redirect_to beer_path(@comment.beer_variety.beer) , notice: 'Comment was successfully posted.' }
        format.json { render json: @comment, status: :created, location: @comment }
        format.js
      else
        @beer_variety = BeerVariety.find(params[:comment][:beer_variety_id])
        format.html { render 'create' }
        format.json { render json: @comment.errors, status: :unprocessable_entity }
        format.js
      end
    end
  end

  def destroy
  end

end
