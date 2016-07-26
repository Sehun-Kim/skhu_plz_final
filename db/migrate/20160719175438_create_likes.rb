class CreateLikes < ActiveRecord::Migration
  def change
    create_table :likes do |t|
         t.references :user, index: true, foreign_key: true
<<<<<<< HEAD
         t.references :post, index: true, foreign_key: true
=======
         t.references :lecture, index: true, foreign_key: true
>>>>>>> 757ca0fdd669651c076604c41792f5a59d77e9ea
        
      t.timestamps null: false
    end
  end
end
<<<<<<< HEAD
  
=======
>>>>>>> 757ca0fdd669651c076604c41792f5a59d77e9ea
