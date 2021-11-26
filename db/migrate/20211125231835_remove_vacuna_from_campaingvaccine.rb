class RemoveVacunaFromCampaingvaccine < ActiveRecord::Migration[6.1]
  def change
    remove_reference :campaingvaccines, :vacuna, null: false, foreign_key: true
  end
end
