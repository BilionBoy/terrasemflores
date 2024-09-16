class Post < ApplicationRecord
  # Validações
  validates :body, presence: true

  # Se você tiver outras validações, adicione-as aqui
  # valids :title, :images, :audios, :videos, presence: false

  # Validações adicionais, se necessário
  # validates :title, :images, :audios, :videos, presence: false

  # Adicione suas associações e métodos aqui, se houver
end
