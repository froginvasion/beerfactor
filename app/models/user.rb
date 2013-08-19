class User < ActiveRecord::Base

  attr_accessible :email, :name, :password, :password_confirmation
  has_secure_password
  validates_presence_of :password, on: :create
  before_validation :omniauth_check

  has_many :rated_beers, :through => :ratings,:source => :beer_varieties
  has_many :ratings


  def self.from_omniauth(auth)
    where(auth.slice(:provider, :uid)).first_or_initialize.tap do |user|
      user.provider = auth.provider
      user.uid = auth.uid
      user.name = auth.info.name
      user.email = auth.info.email
      user.oauth_token = auth.credentials.token
      user.oauth_expires_at = Time.at(auth.credentials.expires_at)
      user.save!
    end
  end

  private
  def omniauth_check
    if self.oauth_token && self.oauth_expires_at && self.provider
      self.password= SecureRandom.base64 if self.password.nil?
    end
  end

end
