class CreateCampaings < ActiveRecord::Migration[6.1]
  def change
    create_table :campaings do |t|
      t.text :name
      t.text :vacuna
      t.date :inicio
      t.date :fin

      t.timestamps
    end
  end
end
