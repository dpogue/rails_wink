module RailsWink
  class Engine < ::Rails::Engine
    isolate_namespace RailsWink
    engine_name :rails_wink

    initializer 'rails_wink.parse_config' do |app|
      ymlfile = YAML::load_file(Rails.root.join('config', 'wink.yml'))
      RailsWink.parse_config ymlfile
    end
  end
end
