class Post < ApplicationRecord
  validates :title, presence: true
  validates :body, presence: true
  validates :published_at, presence: true

  has_many_attached :images
  has_many_attached :videos
end

# Remova o modelo comment.rb, pois não está mais em uso
