OmniAuth.config.logger = Rails.logger

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :google_oauth2, "901854678570-r8hbc6sj6slhr1j9tjn5fuutte9laodg.apps.googleusercontent.com", "Brpkbq2IbOo5tQZ5-vXkuPq4", skip_jwt: true
end
