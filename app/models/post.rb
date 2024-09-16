class Post < ApplicationRecord
  # Validações
  validates :title, presence: true
  validates :body, presence: true
  validates :published_at, presence: true

  # Associações
  has_many :comments, dependent: :destroy
  has_many_attached :images
  has_many_attached :videos

  # Outras funcionalidades e métodos, se necessário
end
