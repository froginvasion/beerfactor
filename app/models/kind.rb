class Kind < ActiveRecord::Base
  attr_accessible :name

  validates_presence_of :name

  belongs_to :beer_variety

end
