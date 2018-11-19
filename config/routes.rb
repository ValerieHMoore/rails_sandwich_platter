Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :sandwiches do
    resources :greens, only: [:new, :index]
    resources :cheeses, only: [:new, :index]
    resources :meats, only: [:new, :index]
    resources :spreads, only: [:new, :index]
    resources :breads, only: [:new, :index]
  end
  
  get '/dairy_free' => 'sandwiches#dairy_free'
  get '/grilled' => 'sandwiches#grilled'
  get '/vegan' => 'sandwiches#vegan'
  get '/vegetarian' => 'sandwiches#vegetarian'
  
  get '/signin' => 'sessions#new'
  post '/login' => 'sessions#create'
  delete '/logout' => 'sessions#destroy'
  
  # get 'signup', to: 'users#new', as: 'signup'
  # get 'login', to: 'sessions#new', as: 'login'
  # get 'logout', to: 'sessions#destroy', as: 'logout'
  
  resources :sandwiches
  resources :eaters
  resources :sessions

end
