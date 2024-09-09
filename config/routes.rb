Rails.application.routes.draw do
  root 'posts#index'

  get 'admin', to: 'posts#admin'
  get 'about', to: 'pages#about'
  get 'archive', to: 'pages#archive'
  get 'questions', to: 'pages#questions'

  resources :posts do
    post 'comments', to: 'posts#create_comment', as: 'create_comment'
    patch 'clear_audio', on: :member
    delete 'remove_image/:index', to: 'posts#remove_image', as: 'remove_image', on: :member
  end
end
