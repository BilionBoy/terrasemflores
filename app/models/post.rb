class Post < ApplicationRecord
  # Validações
  validates :title, presence: true
  validates :body, presence: true
  validates :published_at, presence: true

  # Associações
  # Remova ou comente esta linha:
  # has_many :comments, dependent: :destroy

  has_many_attached :images
  has_many_attached :videos
end
