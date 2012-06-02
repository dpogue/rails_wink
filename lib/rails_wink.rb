require "rails_wink/engine"

module RailsWink
  @@config ||= {}

  def self.config
    return @@config
  end

  def self.parse_config(yamlfile)
    @@config.merge!(yamlfile)
  end
end
