class AddTipoVacunasToVacunas < ActiveRecord::Migration[6.1]
  def change
    add_reference :vacunas, :tipo_vacuna, null: false, foreign_key: true
  end
end
