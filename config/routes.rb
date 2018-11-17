Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :sandwiches do
    resources :greens, only: [:new, :index]
    resources :cheeses, only: [:new, :index]
    resources :meats, only: [:new, :index]
    resources :spreads, only: [:new, :index]
    resources :breads, only: [:new, :index]
  end
  
  resources :sandwiches
  resources :eaters

  get '/dairy_free' => 'sandwiches#dairy_free'
  get '/grilled' => 'sandwiches#grilled'
  get '/vegan' => 'sandwiches#vegan'
  get '/vegetarian' => 'sandwiches#vegetarian'
end
