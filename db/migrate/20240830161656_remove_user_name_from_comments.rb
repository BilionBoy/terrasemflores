class RemoveUserNameFromComments < ActiveRecord::Migration[7.1]
  def change
    remove_column :comments, :user_name, :string
  end
end
