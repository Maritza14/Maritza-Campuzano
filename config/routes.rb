Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  devise_for :users

  devise_scope :user do
    get '/users/sign_out' => 'devise/sessions#destroy'
    end

  resources :pins


    root 'home#index'

    get 'home/index'
    get 'mypins' => 'pins#mypins'
    get 'pinsof/:user_id' => 'pins#pinsof', :as => "pinof"



  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end