Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :users, only: [:index, :new, :create, :show]
  resources :tags, :recipe_tags
  resources :sessions, only: [:index, :new, :create, :show]
  resources :comments

  resources :recipes do
    resources :comments
  end

  post 'recipes/:id', to: 'comments#create'

  post 'sessions', to: 'sessions#create'
  delete 'sessions', to: 'sessions#destroy'

  get 'signup', to: 'users#new'
  get 'login', to: 'sessions#new'
  # post 'recipes/:id/new_comment', to: 'comments#create'
end
