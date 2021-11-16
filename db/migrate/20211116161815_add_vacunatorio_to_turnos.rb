class AddVacunatorioToTurnos < ActiveRecord::Migration[6.1]
  def change
    add_reference :turnos, :vaccination, null: false, foreign_key: true
  end
end
