class CreateStars < ActiveRecord::Migration
  def change
    create_table :stars do |t|
      t.integer :lecture_id
      t.integer :user_id
      t.integer :score, default: 0
<<<<<<< HEAD

      t.timestamps null: false
=======
      
      t.references :user, index: true, foreign_key: true
      t.references :lecture, index: true, foreign_key: true

      t.timestamps 
>>>>>>> 757ca0fdd669651c076604c41792f5a59d77e9ea
    end
  end
end
