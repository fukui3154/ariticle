require_relative 'boot'

require 'rails/all'

Bundler.require(*Rails.groups)

module Article
  class Application < Rails::Application
    config.load_defaults 5.2
    config.i18n.default_locale = :ja
    config.generators do |g|
        g.stylesheets false
        g.javascripts false
        g.helper false
        g.test_framework false
      end
  end
end
