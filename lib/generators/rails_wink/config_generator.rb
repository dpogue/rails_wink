require 'rails/generators'

module RailsWink
  module Generators
    class ConfigGenerator < Rails::Generators::Base
      source_root File.expand_path('../templates', __FILE__)

      def wink_mailer_config
        copy_file "wink.yml", "config/wink.yml"
      end
    end
  end
end
