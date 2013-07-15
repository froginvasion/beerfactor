class Beer < ActiveRecord::Base
  attr_accessible :alcoholpercentage, :description, :kind, :name

  validates_presence_of :name, :kind
  validates_numericality_of :alcoholpercentage, :greater_than_or_equal_to => 0
end
