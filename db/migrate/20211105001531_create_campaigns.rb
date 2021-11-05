class CreateCampaigns < ActiveRecord::Migration[6.1]
  def change
    create_table :campaigns do |t|
      t.string :nombre_campaña
      t.string :vacuna
      t.date :f_incio
      t.date :f_fin
      t.boolean :habilitada

      t.timestamps
    end
  end
end
