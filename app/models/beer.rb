class Beer < ActiveRecord::Base
  attr_accessible :brewery, :description, :name, :country_id

  validates_presence_of :name, :country


  belongs_to :country
  has_many :beer_varieties

end
