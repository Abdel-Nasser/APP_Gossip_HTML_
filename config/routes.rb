Rails.application.routes.draw do
  
  get 'static_pages/home'
  resources :cities
  resources :users
  resources :gossips
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
