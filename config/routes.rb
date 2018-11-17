Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :sandwiches do
    resources :greens, only: [:show, :index]
    resources :cheeses, only: [:show, :index]
    resources :meats, only: [:show, :index]
    resources :spreads, only: [:show, :index]
    resources :breads, only: [:show, :index]
  end
  
  resources :sandwiches
  resources :eaters

end
