OmniAuth.config.logger = Rails.logger

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :facebook, '289402031198022', '182820db7ce5477b3fdaae01358a7f39'
end