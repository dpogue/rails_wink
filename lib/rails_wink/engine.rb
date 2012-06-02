module RailsWink
  class Engine < ::Rails::Engine
    isolate_namespace RailsWink
    engine_name :rails_wink

    initializer 'rails_wink.parse_config' do |app|
      if File.exists? Rails.root.join('config', 'wink.yml')
        ymlfile = YAML::load_file(Rails.root.join('config', 'wink.yml'))
        RailsWink.parse_config ymlfile
      else
        Rails.logger.warn 'Could not load config file for rails_wink!'
      end
    end
  end
end
