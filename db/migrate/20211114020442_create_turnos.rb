class CreateTurnos < ActiveRecord::Migration[6.1]
  def change
    create_table :turnos do |t|
      t.datetime :Fecha_hora
      t.boolean :disponible

      t.timestamps
    end
  end
end
