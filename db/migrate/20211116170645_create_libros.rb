class CreateLibros < ActiveRecord::Migration[6.1]
  def change
    create_table :libros do |t|
      t.string :titulo
      t.references :autor, null: false, foreign_key: true
      t.string :isbn
      t.string :editorial
      t.string :edicion
      t.float :precio

      t.timestamps
    end
  end
end
