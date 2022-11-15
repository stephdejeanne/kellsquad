Rails.application.routes.draw do
  get 'reviews/create'
  get 'reviews/destroy'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  devise_for :users
  root to: "pages#home"
  resources :quads
  resources :reviews, only: [:create, :destroy]
end
