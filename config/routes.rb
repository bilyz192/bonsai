Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'pages#home'
  get '/pages', to: 'pages#home'
  resources :resumes
  get '/product/index', to: 'pages#home'
  get 'dashboard/', to: 'dashboard#index'
  resources :articles, path: '/dashboard/articles'
  resources :categories, path: '/dashboard/categories'
  resources :products

  resources :staffs, path: '/dashboard/staffs'
  resources :users, :controllers => { :registrations => "registrations" }
end
