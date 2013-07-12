require File.expand_path('../boot', __FILE__)

require "active_record/railtie"
require "action_controller/railtie"
require "action_mailer/railtie"
require "sprockets/railtie"

Bundler.require(:default, Rails.env)

module Miniglobo
  class Application < Rails::Application
    config.i18n.default_locale = 'pt-BR'
    config.time_zone = 'Brasilia'
    config.generators.stylesheet_engine = :sass
    config.action_mailer.default_url_options = { host: ENV['DOMAIN'] }
    # config.assets.precompile += %w()
    config.generators do |g|
      g.assets            false
      g.helper            false
      g.view_specs        false
      g.helper_specs      false
    end

    config.to_prepare do
      Devise::Mailer.layout "email"
    end
  end
end
