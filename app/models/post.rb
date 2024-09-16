class Post < ApplicationRecord
  # Validações
  validates :body, presence: true  # Somente o campo body é obrigatório

  # Associações
  has_many_attached :images
  has_many_attached :videos
end
