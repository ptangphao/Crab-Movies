Rails.application.routes.draw do
  devise_for :users

  resources :movies, only: [:show] do
<<<<<<< HEAD
    resources :reviews

=======
    resources :reviews, only: [:create, :destroy] do
      resources :ratings, only: [:create]
    end
    resources :ratings, only: [:create]
>>>>>>> 52e4f21fe65c74d110f03572e559de5a4d98dc5e
  end

  resources :categories, only: [:index, :show]

  resources :actors, only: [:index, :show] do
<<<<<<< HEAD
    resources :reviews

  end
  resources :comments
resources :ratings
  root to:"categories#index"
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'
=======
    resources :reviews, only: [:create, :destroy] do
      resources :ratings, only: [:create]
    end
  end
>>>>>>> 52e4f21fe65c74d110f03572e559de5a4d98dc5e

  resources :comments, only: [:create, :destroy]

  root to:"categories#index"

end
