class RatingsController < ApplicationController

  def create
    @rating = Rating.new(params[:rating])
    @rating.beer_variety_id = params[:rating][:beer_variety_id]
    @rating.user_id = current_user.id

    respond_to do |format|
      if @rating.save
        @beer = Beer.find_by_id(params[:rating][:beer_id])
        format.html { redirect_to beer_path(@beer), :notice => "you have rated!"}
        format.js
      end
    end
  end

  def update
    @beer_variety = BeerVariety.find(params[:rating][:beer_variety_id])
    @rating = current_user.ratings.find_by_beer_variety_id(@beer_variety.id)
    if @rating.update_attributes params[:rating]
      respond_to do |format|
        format.html { redirect_to beer_path(@beer),:notice => "your rating has been updated!"}
        format.js
      end
    end
  end
end
