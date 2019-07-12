Rails.application.routes.draw do
  resources :sightings
  resources :animals
  get '/submit_get' => 'sightings#new'
  post '/submit_post' => 'sightings#post'
  get 'embed_json' => 'application#options', :via => [:options]

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
