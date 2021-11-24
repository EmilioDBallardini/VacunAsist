class CreateTipoVacunas < ActiveRecord::Migration[6.1]
  def change
    create_table :tipo_vacunas do |t|
      t.text :nombre

      t.timestamps
    end
  end
end
