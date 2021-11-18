class AddCampaingvaccineToCampaingforUsers < ActiveRecord::Migration[6.1]
  def change
    add_reference :campaingfor_users, :campaingvaccine, null: false, foreign_key: true
  end
end
