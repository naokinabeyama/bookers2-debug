Rails.application.routes.draw do
  get 'home/about'
  get 'users/follows/:follow_id' => 'users#follows',as: 'user_follows'
  get 'users/followers/:follow_id' => 'users#followers',as: 'user_followers'
  devise_for :users
  root "home#top"
  resources :users, only: [:show, :index, :edit, :update, :create, :follows, :followers]
  resources :books, only: [:new, :create, :index, :show, :edit, :update] do
  	resource :favorites,  only: [:create,  :destroy]
  	resources :book_comments, only: [:create, :destroy]
  end
  resources :relationships, only: [:create, :destroy]
end