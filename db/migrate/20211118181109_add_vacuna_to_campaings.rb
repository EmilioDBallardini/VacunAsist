class AddVacunaToCampaings < ActiveRecord::Migration[6.1]
  def change
    add_reference :campaingvaccines, :vacuna, null: false, foreign_key: true
  end
end
