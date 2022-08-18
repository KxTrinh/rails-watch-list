Rails.application.routes.draw do
  # get 'lists/:list_id/bookmarks/new', to: 'bookmarks#new'
  # get 'lists/:list_id/bookmarks', to: 'bookmarks#create'
  # get 'bookmarks/:id', to: 'bookmarks#destroy'

  # get 'lists', to: 'lists#index'
  # get 'lists/:id', to: 'lists#show', as: :list
  # get 'lists/new', to: 'lists#new'
  # get 'lists', to: 'lists#create'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  # resources :lists, except: [:destroy] do
  resources :lists do
    resources :bookmarks, only: [:new, :create]
  end
  resources :bookmarks, only: [:destroy]
end
