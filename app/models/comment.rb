class Comment < ActiveRecord::Base
  attr_accessible :beer_variety_id, :body, :user_id
  attr_accessible :beer_variety, :user

  belongs_to :beer_variety
  belongs_to :user

  validates_presence_of :beer_variety_id, :body, :user_id
  validates_length_of :body, :minimum => 1, :maximum => 300
end
