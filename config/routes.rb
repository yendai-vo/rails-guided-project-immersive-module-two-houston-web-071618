Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :users, only: [:index, :new, :create, :show]
  resources :recipes, :tags, :recipe_tags, :comments
  resources :sessions, only: [:index, :new, :create, :show]

  post 'sessions', to: 'sessions#create'
  delete 'sessions', to: 'sessions#destroy'

  get 'signup', to: 'users#new'
  get 'login', to: 'sessions#new'
end
