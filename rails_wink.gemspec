$:.push File.expand_path("../lib", __FILE__)
require "rails_wink/version"

Gem::Specification.new do |s|
  s.name        = "rails_wink"
  s.version     = RailsWink::VERSION

  s.authors     = ["Darryl Pogue"]
  s.email       = ["darryl@dpogue.ca"]

  s.homepage    = "https://github.com/dpogue/rails_wink"
  s.summary     = "Wink allows users to easily provide browser details for debugging."
  s.description = %q{Wink is a simple, open-source tool for web developers built to save them time and to spare their clients the painful exercise of providing browser details during debugging.

    Originally written for PHP by Denim&Steel, this is a Rails 3 mountable engine that can be used as part of any Rails application.
  }

  s.files = Dir["{app,config,db,lib}/**/*"] + ["LICENSE", "Rakefile", "README.md"]

  s.add_dependency "rails", ">= 3.1.0"
end
