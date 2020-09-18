Rails.application.routes.draw do
  get 'home/about'
  devise_for :users
  root "home#top"
  resources :users, only: [:show,:index,:edit,:update,:create]
  resources :books, only: [:new, :create, :index, :show, :edit, :update] do
  	resource :favorites,  only: [:create,  :destroy]
  	resources :book_comments, only: [:create, :destroy]
  end
end