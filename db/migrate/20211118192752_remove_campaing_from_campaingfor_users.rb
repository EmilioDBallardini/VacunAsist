class RemoveCampaingFromCampaingforUsers < ActiveRecord::Migration[6.1]
  def change
    remove_reference :campaingfor_users, :campaing, null: false, foreign_key: true
  end
end
