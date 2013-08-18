class Beer < ActiveRecord::Base
  attr_accessible :brewery, :description, :name, :country_id

  validates_presence_of :name, :country


  belongs_to :country

=begin
  has_many :comments
  has_many :ratings
=end
=begin
  has_many :raters, :through => :ratings, :source => :users
=end

=begin
  def average_rating
    @value = 0
    self.ratings.each do |rating|
      @value += rating.score
    end
    @total = self.ratings.size
    @value.to_f / @total.to_f
  end
=end

end
