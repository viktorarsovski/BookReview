Rails.application.routes.draw do
  devise_for :users
  devise_scope :user do
  get '/users/sign_out' => 'devise/sessions#destroy'
end
  resources :books do
    resources :reviews
  end
  root 'books#index'
end

