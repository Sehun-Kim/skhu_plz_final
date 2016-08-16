class CreateLectures < ActiveRecord::Migration
  def change
    create_table :lectures do |t|
      t.string :name
      t.integer :major_id
      t.integer :professor_id

      t.timestamps null: false
    end
  end
end
