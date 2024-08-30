class AddAudioUrlToPosts < ActiveRecord::Migration[7.1]
  def change
    add_column :posts, :audio_url, :string
  end
end
