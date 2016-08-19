class CreatePostus < ActiveRecord::Migration
  def change
    create_table :postus do |t|
      t.string :title
      t.text :content

      t.timestamps null: false
    end
  end
end
