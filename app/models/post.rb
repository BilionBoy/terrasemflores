class Post < ApplicationRecord
  validates :title, presence: true
  validates :body, presence: true
  validates :published_at, presence: true
  
  has_many_attached :images
  # Remove esta linha
  # has_many :comments, dependent: :destroy
  has_many_attached :videos
end
