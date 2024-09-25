class CreateCourses < ActiveRecord::Migration[6.0]
  def change
    create_table :courses do |t|
      t.string :name
      t.string :category
      t.references :teacher, foreign_key: { to_table: :utilizers }  # Fixing the foreign key reference

      t.timestamps
    end
  end
end