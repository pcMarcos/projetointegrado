Rails.application.routes.draw do
  devise_for :users

  resources 'expenses'
  resources 'pages'
  resources 'limits'
  resources 'categories'
  resources 'about'

  root 'pages#show', page: 'home'
end
