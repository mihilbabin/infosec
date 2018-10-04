Rails.application.routes.draw do
  devise_for :admins, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  root 'index#index'
  get 'title_doc', to: 'index#title_doc'
  resources :labs, only: [:show] do
    member do
      get :download
    end
  end
  resources :ciphers, only: [] do
    collection do
      get :caesars
    end
  end
end
