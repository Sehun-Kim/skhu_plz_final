class CreateCommentfs < ActiveRecord::Migration
  def change
    create_table :commentfs do |t|
      t.references :postf, index: true, foreign_key: true
      t.text :body, presence: true
      t.integer :user_id

      t.timestamps null: false
    end
  end
end
