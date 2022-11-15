Rails.application.routes.draw do
<<<<<<< HEAD
  get 'quads/index'
=======
  get 'quads/show'
  devise_for :users
>>>>>>> 83f6448ee3772bcf86c500488fa17d85ad7f7e9c
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
