class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :title
      t.text :content
      t.integer :lecture_id
      t.integer :user_id

      t.timestamps 
    end
    add_index :posts, :user_id
  end
end
