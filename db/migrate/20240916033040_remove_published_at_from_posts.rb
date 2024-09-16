class RemovePublishedAtFromPosts < ActiveRecord::Migration[7.1]
  def change
    remove_column :posts, :published_at, :datetime
  end
end
