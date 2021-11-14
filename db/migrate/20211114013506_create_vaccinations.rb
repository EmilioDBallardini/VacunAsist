class CreateVaccinations < ActiveRecord::Migration[6.1]
  def change
    create_table :vaccinations do |t|
      t.text :nombre
      t.text :direccion
      t.text :contacto

      t.timestamps
    end
  end
end
