Rails.application.routes.draw do
  get 'quads/index'
  get 'quads/show'
  devise_for :users
  get 'quads/show'
  devise_for :users
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
