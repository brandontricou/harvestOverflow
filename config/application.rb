require File.expand_path('../boot', __FILE__)

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module HarvestOverflow
  class Application < Rails::Application
    console do
      ActiveRecord::Base.connection
    end
  end
end
