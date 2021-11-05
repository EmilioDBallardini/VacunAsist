class EliminarCampaignid < ActiveRecord::Migration[6.1]
  def change
    remove_column :usercampaings, :campaign_id,:string
  end
end
