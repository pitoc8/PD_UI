# Rails.application.config.x.settings["oauth2"] = {} if Rails.env.test?
#
# # [START omniauth_configuration]
# Rails.application.config.middleware.use OmniAuth::Builder do
#   config = Rails.application.config.x.settings['oauth2']
#
#   provider :google_oauth2, config['client_id'],
#                            config['client_secret'],
#                            image_size: 150
# end
# [END omniauth_configuration]
# OmniAuth.config.logger = Rails.logger
#
# Rails.application.config.middleware.use OmniAuth::Builder do
#   provider :google_oauth2, 'my Google client id', 'my Google client secret', {client_options: {ssl: {ca_file: Rails.root.join("cacert.pem").to_s}}}
# end


Rails.application.config.x.settings["oauth2"] = {} if Rails.env.test?

# [START omniauth_configuration]
Rails.application.config.middleware.use OmniAuth::Builder do
  config = Rails.application.config.x.settings['oauth2']

  provider :google_oauth2, config['client_id'],
                           config['client_secret'],
                           image_size: 150
end
