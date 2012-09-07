require File.expand_path('../boot', __FILE__)

require 'rails/all'

require 'sprockets/railtie'  # http://stackoverflow.com/questions/9363800/routingerror-in-javascript-folder-after-upgrading-from-rails-3-1-to-rails-3-2

# If you have a Gemfile, require the gems listed there, including any gems
# you've limited to :test, :development, or :production.
# Bundler.require(:default, Rails.env) if defined?(Bundler) : can be removed
Bundler.require *Rails.groups(:assets => %w(development test))

module ApotomoingSequencers
  class Application < Rails::Application
  
    config.autoload_paths += %W(#{Rails.root}/lib)
    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration should go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded.

    # Custom directories with classes and modules you want to be autoloadable.
    # config.autoload_paths += %W(#{config.root}/extras)

    # Only load the plugins named here, in the order given (default is alphabetical).
    # :all can be used as a placeholder for all plugins not explicitly named.
    # config.plugins = [ :exception_notification, :ssl_requirement, :all ]

    # Activate observers that should always be running.
    # config.active_record.observers = :cacher, :garbage_collector, :forum_observer

    # Set Time.zone default to the specified zone and make Active Record auto-convert to this zone.
    # Run "rake -D time" for a list of tasks for finding time zone names. Default is UTC.
    # config.time_zone = 'Central Time (US & Canada)'

    # The default locale is :en and all translations from config/locales/*.rb,yml are auto loaded.
    # config.i18n.load_path += Dir[Rails.root.join('my', 'locales', '*.{rb,yml}').to_s]
    # config.i18n.default_locale = :de

    # JavaScript files you want as :defaults (application.js is always included).
    # config.action_view.javascript_expansions[:defaults] = %w(jquery rails)

    # Manually installing gem rails-ujs : reference : http://rubydoc.info/gems/rails-ujs/0.0.3/frames
    # config.action_view.javascript_expansions[:defaults] = %w(rails application)

    # This line no longer required when the gem is used : jquery-ujs.js
    # config.action_view.javascript_expansions[:defaults] = %w(jquery jquery_ujs application)

    # Configure the default encoding used in templates for Ruby 1.9.
    config.encoding = "utf-8"

    # Configure sensitive parameters which will be filtered from the log file.
    config.filter_parameters += [:password]

    # Enable the asset pipeline
    config.assets.enabled = true

    # Version of your assets, change this if you want to expire all your assets
    config.assets.version = '1.0'

    # Heroku requires this to be false.
    config.assets.initialize_on_precompile = false
  end
end
