class CreateAutors < ActiveRecord::Migration[6.1]
  def change
    create_table :autors do |t|
      t.string :nombre
      t.string :apellido_p
      t.string :apellido_m
      t.string :nacionalidad
      t.date :nacimiento

      t.timestamps
    end
  end
end
