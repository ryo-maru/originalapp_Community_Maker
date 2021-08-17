Rails.application.routes.draw do
  devise_for :users
  resources :communities do
    resources :comments
  end
  mount LetterOpenerWeb::Engine, at: "/letter_opener" if Rails.env.development?
  root 'tops#index'
  resources :users, only: [:new, :create]
end
