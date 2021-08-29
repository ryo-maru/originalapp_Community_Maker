Rails.application.routes.draw do
  get 'relationships/create'
  get 'relationships/destroy'
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :users
  resources :communities do
    collection do
      post :confirm
      get 'search'
  end

    resources :comments
  end
  mount LetterOpenerWeb::Engine, at: "/letter_opener" if Rails.env.development?
  root 'tops#index'
  resources :users, only: [:new, :create, :show, :index]
  devise_scope :user do
    post 'users/guest_sign_in', to: 'users/sessions#guest_sign_in'
    post 'users/guest_admin_sign_in', to: 'users/sessions#guest_admin_sign_in'
  end

  resources :favorites
  resources :members
  resources :relationships, only: [:create, :destroy, :followers]
  resources :conversations do
    resources :messages
  end

  resources :users, only: [:show] do
   member do
      get :following, :followers
    end
 end

end
