class CreateVaccinations < ActiveRecord::Migration[6.1]
  def change
    create_table :vaccinations do |t|
      t.string :nombre
      t.text :direccion

      t.timestamps
    end
  end
end
