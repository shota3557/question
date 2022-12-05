Rails.application.routes.draw do
  get 'mypage/show'
  devise_for :users, controllers: {
    sessions: 'users/sessions'
  }
  root 'tasks#index'
  resources :causes
  resources :tasks, except: [:show]
  resources :users, only: [:show]
end
