class CreateLectures < ActiveRecord::Migration
  def change
    create_table :lectures do |t|
      t.string :name
      t.integer :major_id
      t.integer :professor_id

      t.integer :kyungline_id
      t.integer :glline_id
      t.integer :dline_id
      t.integer :saline_id
      t.integer :sasaline_id
      t.integer :sakyungline_id
      t.integer :sajungline_id
      t.integer :sbline_id
      t.integer :soline_id
      t.integer :sinline_id
      t.integer :shline_id
      t.integer :yline_id
      t.integer :illine_id
      t.integer :jungline_id
      t.integer :joongline_id
      t.integer :comline_id
      t.integer :gpline_id
      t.integer :chaline_id
      t.integer :ksline_id
      t.integer :kiline_id
      t.integer :kjline_id
      t.integer :sjline_id





      t.timestamps null: false
    end
  end
end
