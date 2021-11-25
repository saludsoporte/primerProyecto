class CreateEditorials < ActiveRecord::Migration[6.1]
  def change
    create_table :editorials do |t|
      t.string :nombre
      t.string :direccion
      t.integer :numero

      t.timestamps
    end
  end
end
