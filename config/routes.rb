Rails.application.routes.draw do
  devise_for :admins, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  root 'index#index'
  get 'title_doc', to: 'index#title_doc'
end
