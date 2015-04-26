Rails.application.routes.draw do
  devise_for :users
  devise_for :admins

  namespace 'admin' do
    resources :users, only: :index
    resources :topics
  end

  resources :topics, only: [:index, :show], param: :slug do
    resources :comments,  only: :create
  end

  resources :favorites, only: [:create, :destroy], param: :slug

  root 'topics#index'
end
