class AddAsistionToTurnos < ActiveRecord::Migration[6.1]
  def change
    add_column :turnos, :asistio, :boolean
  end
end
