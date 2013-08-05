class Rating < ActiveRecord::Base
  attr_accessible :beer_id, :score, :user_id

  belongs_to :beer
  belongs_to :user

  validates_presence_of :beer_id, :user_id, :score
  validates_numericality_of :score, :greater_than => 0
  validates_numericality_of :score, :less_than_or_equal_to => 10


end
