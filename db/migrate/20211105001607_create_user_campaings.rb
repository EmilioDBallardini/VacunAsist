class CreateUserCampaings < ActiveRecord::Migration[6.1]
  def change
    create_table :user_campaings do |t|
      t.string :user_id
      t.string :campaign_id
      t.string :vacunatorio_id
      t.date :f_registracion

      t.timestamps
    end
  end
end
