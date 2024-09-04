Rails.application.routes.draw do
  resources :posts do
    post 'comments', to: 'posts#create_comment', as: 'create_comment'
  end

  # Definindo a rota raiz para o post específico
  root to: redirect('/posts/1')

  # Outras rotas
  get 'about', to: 'pages#about'
  get 'archive', to: 'pages#archive'
  get 'questions', to: 'pages#questions'
end
