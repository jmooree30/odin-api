Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :photos, only: [:index, :show, :new, :create, :destroy]
  root 'photos#index'
  get '/search', to: 'photos#index'
end
