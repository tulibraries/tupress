require_relative 'boot'
require 'rails/all'
# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

# require 'carrierwave' 

module Tupress
  class Application < Rails::Application
    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration should go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded.
    #
    begin
      # Tell rails the applicaiton will be served from a subdirectory.
      config.relative_url_root = config_for(:deploy_to)['path']
       config.time_zone = 'Eastern Time (US & Canada)'
       config.active_record.default_timezone = :local
    rescue
    # Do nothing and expect the application to be server in root path.
    end
  end
end

