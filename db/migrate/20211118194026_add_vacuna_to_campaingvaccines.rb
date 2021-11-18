class AddVacunaToCampaingvaccines < ActiveRecord::Migration[6.1]
  def change
    add_reference :campaingvaccines, :vacuna, foreign_key: true
  end
end
