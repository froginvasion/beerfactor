class Beer < ActiveRecord::Base
  attr_accessible :alcoholpercentage, :description, :kind_id, :name

  validates_presence_of :name, :kind
  validates_numericality_of :alcoholpercentage

  belongs_to :kind
  has_many :comments
  has_many :ratings
  has_many :raters, :through => :ratings, :source => :users

  def average_rating
    @value = 0
    self.ratings.each do |rating|
      @value += rating.score
    end
    @total = self.ratings.size
    @value.to_f / @total.to_f
  end

end
