class AddVideosToPosts < ActiveRecord::Migration[6.1]
  def change
    add_column :posts, :videos, :jsonb, default: []
  end
end
