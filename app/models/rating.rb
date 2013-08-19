class Rating < ActiveRecord::Base
  attr_accessible :beer_variety_id, :score, :user_id

  belongs_to :beer_variety
  belongs_to :user

  validates_presence_of :beer_variety_id, :user_id, :score
  validates_numericality_of :score, :greater_than => 0
  validates_numericality_of :score, :less_than_or_equal_to => 10


end
