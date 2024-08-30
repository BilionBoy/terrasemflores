Rails.application.routes.draw do
  resources :posts do
    post 'comments', to: 'posts#create_comment', as: 'create_comment'
  end


  root 'pages#home'
  get 'about', to: 'pages#about'
  get 'archive', to: 'pages#archive'
  get 'questions', to: 'pages#questions'
end
