class Beer < ActiveRecord::Base
  attr_accessible :alcoholpercentage, :description, :kind_id, :name

  validates_presence_of :name, :kind
  validates_numericality_of :alcoholpercentage

  belongs_to :kind
  has_many :comments

end
