Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :users, only: [:index, :new, :create, :show]
  resources :recipes, :tags, :recipe_tags, :comments, :sessions

  get 'signup', to: 'users#new'
end
