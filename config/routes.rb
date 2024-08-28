Rails.application.routes.draw do
  resources :posts do
    resources :comments, only: [:create]
  end
  root 'pages#home'
  get 'about', to: 'pages#about'
  get 'archive', to: 'pages#archive'
  get 'questions', to: 'pages#questions'
end
