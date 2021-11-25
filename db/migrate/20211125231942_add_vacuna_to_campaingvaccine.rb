class AddVacunaToCampaingvaccine < ActiveRecord::Migration[6.1]
  def change
    add_column :campaingvaccines, :vacuna, :text
  end
end
