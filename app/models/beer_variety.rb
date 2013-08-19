class BeerVariety < ActiveRecord::Base

  attr_accessible :alcohol_percentage, :name, :kind_id

  belongs_to :beer
  belongs_to :kind

  has_many :comments
  has_many :ratings

  has_many :raters, :through => :ratings, :source => :users

  validates_presence_of :name, :kind_id

  def average_rating
    @value = 0
    self.ratings.each do |rating|
      @value += rating.score
    end
    @total = self.ratings.size
    @value.to_f / @total.to_f
  end

end
