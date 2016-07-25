class CreateStars < ActiveRecord::Migration
  def change
    create_table :stars do |t|
      t.integer :lecture_id
      t.integer :user_id
      t.integer :score, default: 0
      
      t.references :user, index: true, foreign_key: true
      t.references :lecture, index: true, foreign_key: true

      t.timestamps 
    end
  end
end
