class AddVaccinationToVacunass < ActiveRecord::Migration[6.1]
  def change
    add_reference :vacunas, :vaccination, null: false, foreign_key: true
  end
end
