class CreateCommentus < ActiveRecord::Migration
  def change
    create_table :commentus do |t|
      t.references :postu, index: true, foreign_key: true
      t.text :body, presence: true
      t.integer :user_id

      t.timestamps null: false
    end
  end
end
