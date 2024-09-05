Rails.application.routes.draw do
  root 'posts#index'

  # Rota específica para Admin
  get 'admin', to: 'posts#admin'

  resources :posts do
    post 'comments', to: 'posts#create_comment', as: 'create_comment'
  end

  get 'about', to: 'pages#about'
  get 'archive', to: 'pages#archive'
  get 'questions', to: 'pages#questions'
end
