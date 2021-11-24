class CreateVacunas < ActiveRecord::Migration[6.1]
  def change
    create_table :vacunas do |t|
      t.text :lote
      t.integer :cantidad

      t.timestamps
    end
  end
end
