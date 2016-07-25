class CreateExtasks < ActiveRecord::Migration[5.0]
  def change
    create_table :extasks do |t|
      t.integer :reps
      t.integer :pounds
      t.integer :sets
      t.references :exercise, foreign_key: true

      t.timestamps
    end
  end
end
