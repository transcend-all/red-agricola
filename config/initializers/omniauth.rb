OmniAuth.config.logger = Rails.logger

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :google_oauth2, "901854678570-n9ek0b3kbfatv4tpdpr23mu023qhagj4.apps.googleusercontent.com", "kG1Nee2u-S4C9cwwD0hwy8DD", skip_jwt: true
end
