Rails.application.routes.draw do
  resources :greens
  resources :cheeses
  resources :meats
  resources :spreads
  resources :breads
  resources :eaters
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
