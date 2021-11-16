class CreateCampaingforUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :campaingfor_users do |t|

      t.timestamps
    end
  end
end
