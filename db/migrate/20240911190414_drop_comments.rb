class DropComments < ActiveRecord::Migration[7.0]
  def up
    drop_table :comments
  end

  def down
    create_table :comments do |t|
      t.text :body
      t.string :user_name
      t.references :post, null: false, foreign_key: true

      t.timestamps
    end
  end
end
