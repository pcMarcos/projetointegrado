Rails.application.routes.draw do
  devise_for :users

  resources 'expenses'
  resources 'pages'
  resources 'limits'
  resources 'categories'

  get 'about' => 'about#index'
  get 'features' => 'features#index'
  delete 'categories/:id/delete' => 'categories#destroy', as: 'delete_category'
  get 'general_expenses' => 'expenses#general', as: 'general_expenses'
  get 'categories_expenses' => 'expenses#categories', as: 'categories_expenses'

  root 'pages#show', page: 'home'
end
