class Comment < ActiveRecord::Base
  attr_accessible :beer_id, :body, :user_id
  attr_accessible :beer, :user

  belongs_to :beer
  belongs_to :user

  validates_presence_of :beer_id, :body, :user_id
  validates_length_of :body, :minimum => 1, :maximum => 300
end
