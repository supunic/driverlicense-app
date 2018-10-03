Rails.application.routes.draw do
  get '.well-known/acme-challenge#index'

  get 'lisence_informations/index'

  get 'operations/index'

  get 'protection_of_personal_datas/index'

  get 'toss/index'

  resources :contacts
  get 'usages/index'

  get 'torves/create'

  get 'itimon_ittous/index'
  post 'itimon_ittous/show'

  root 'homes#index'

  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :users
  resources :users
  resources :torf
  if Rails.env.development?
    mount LetterOpenerWeb::Engine, at: "/letter_opener" if Rails.env.development?
  end

  resources :questions do
    member do
      get :devide
    end
  end
end
