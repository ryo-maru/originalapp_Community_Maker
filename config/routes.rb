Rails.application.routes.draw do
  devise_for :users
  resources :communities
  mount LetterOpenerWeb::Engine, at: "/letter_opener" if Rails.env.development?
  root 'tops#index'
end
