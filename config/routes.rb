Rails.application.routes.draw do

  devise_for :users

  root "pages#home"
  resources :projects
  #  Add route to select a project
  resources :tasks


end
