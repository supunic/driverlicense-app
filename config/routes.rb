Rails.application.routes.draw do
  root 'homes#index'
  get 'protection_of_personal_datas/index'
  get 'toss/index'
  get 'itimon_ittous/index'
  post 'itimon_ittous/show'
  # ssl証明書発行用
  get ".well-known/acme-challenge/:id" => "tests#letsencrypt"

  resources :questions, only: [:index] do
    member do
      get :devide
    end
  end
  devise_for :users
  resources :users, only: [:index, :show, :destroy]
  resources :contacts, only: [:new, :create, :index, :show]

  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  if Rails.env.development?
    mount LetterOpenerWeb::Engine, at: "/letter_opener" if Rails.env.development?
  end
end
