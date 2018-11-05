Rails.application.routes.draw do
  get 'inicio/index'
  root 'inicio#index' 
  devise_for :users
  resources :peticions
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
