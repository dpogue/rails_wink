# Wink (for Rails)

<img style="float:right;" src="http://denimandsteel.com/blog/images/winkerbean.png" />

## About
We got tired of asking people to send us their browser information, screen size, and plugins... so we made it easier for everybody.  
Wink grabs a snapshot of the current browser and sends it away.

Please fork and make it better!

This was originally implemented for PHP by Denim & Steel: https://github.com/denimandsteel/wink

##Installation
Add `gem 'rails_wink'` to your Gemfile.

Mount the engine in your Rails application's config/routes.rb, like this:

```ruby
Rails.application.routes.draw do

  # Mount the engine at /wink
  mount RailsWink::Engine => '/wink', :as => 'wink'

end
```

You can now do cool things like `link_to 'Report a Bug', wink.root_url` in your
application's views.

##License
MIT License  
Copyright (C) 2012 Darryl Pogue
