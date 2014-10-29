Rails.application.routes.draw do
  
  resources :feedbacks
  resources :contacts

  devise_for :users

  get 'home/index'
  root :to => 'home#index'

end