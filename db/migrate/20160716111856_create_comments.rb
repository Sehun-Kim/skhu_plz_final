class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.references :post, index: true, foreign_key: true
      t.text :body
      t.integer :post_id
      t.integer :user_id

      t.timestamps
    end
    add_index :comments, :user_id
  end
end
