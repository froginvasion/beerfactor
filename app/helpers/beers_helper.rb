module BeersHelper

  def rating_ballot
    if @rating = current_user.ratings.find_by_beer_variety_id(params[:id])
      @rating
    else
      current_user.ratings.new
    end
  end

  def rating_compare
      @rating = current_user.ratings.find_by_beer_variety_id(params[:id])
      lambda do |r|
        if @rating
          r == @rating.score
        else
          false
        end
      end
  end
end
