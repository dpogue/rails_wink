RailsWink::Engine.routes.draw do
  root :to => 'wink#index'

  match '/submit', :to => 'wink#submit', :as => 'submit'
end
