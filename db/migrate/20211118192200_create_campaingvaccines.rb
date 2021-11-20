class CreateCampaingvaccines < ActiveRecord::Migration[6.1]
  def change
    create_table :campaingvaccines do |t|
      t.text :name
      t.date :inicio
      t.date :fin

      t.timestamps
    end
  end
end
