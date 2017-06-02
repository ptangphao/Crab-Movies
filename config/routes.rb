Rails.application.routes.draw do
  devise_for :users

  resources :movies, only: [:show] do
    resources :reviews, only: [:create, :destroy] do
      resources :ratings, only: [:create]
      resources :comments, only: [:create, :destroy]
    end
    resources :ratings, only: [:create]
  end

  resources :categories, only: [:index, :show]

  resources :actors, only: [:index, :show] do
    resources :reviews, only: [:create, :destroy] do
      resources :ratings, only: [:create]
      resources :comments, only: [:create, :destroy]
    end
  end

  root to:"categories#index"

end
