class Comment < ActiveRecord::Base
  attr_accessible :beer_id, :body, :user_id

  belongs_to :beer, :foreign_key => :beer_id
  belongs_to :user, :foreign_key => :user_id

  validates_presence_of :beer_id, :body, :user_id
  validates_length_of :body, :minimum => 1, :maximum => 300
end
