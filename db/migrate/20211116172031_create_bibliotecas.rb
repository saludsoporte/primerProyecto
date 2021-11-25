class CreateBibliotecas < ActiveRecord::Migration[6.1]
  def change
    create_table :bibliotecas do |t|
      t.string :nombre
      t.string :direccion

      t.timestamps
    end
  end
end
