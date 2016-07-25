class CreateStars < ActiveRecord::Migration
  def change
    create_table :stars do |t|
      t.integer :lecture_id
      t.integer :user_id
      t.integer :score, default: 0

      t.timestamps null: false
    end
  end
end
