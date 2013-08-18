class CountriesController < ApplicationController
  def create
    @country = Country.new(params[:country])
    @country.save!
  end

end
