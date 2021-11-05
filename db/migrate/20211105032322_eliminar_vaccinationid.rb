class EliminarVaccinationid < ActiveRecord::Migration[6.1]
  def change
    remove_column :usercampaings, :vacunatorio_id, :string
  end
end
