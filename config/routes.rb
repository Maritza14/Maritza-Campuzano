Rails.application.routes.draw do
  devise_for :users

  devise_scope :user do
    get '/users/sign_out' => 'devise/sessions#destroy'

    get 'home/index'
    root 'home#index'
  end
  resources :pins
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end