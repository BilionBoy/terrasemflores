Rails.application.routes.draw do
  root 'posts#index'

  get 'hauntmex3', to: 'posts#hauntmex3'
  get 'about', to: 'pages#about'
  get 'archive', to: 'pages#archive'
  get 'questions', to: 'pages#questions'

  resources :posts do
    patch 'clear_audio', on: :member
    delete 'remove_image/:index', to: 'posts#remove_image', as: 'remove_image', on: :member
  end

  resources :contacts, only: %i[index create]
end
