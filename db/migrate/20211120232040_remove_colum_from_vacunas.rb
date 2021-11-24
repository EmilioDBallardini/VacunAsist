class RemoveColumFromVacunas < ActiveRecord::Migration[6.1]
  def change
    remove_column :vacunas, :vacuna, :text
  end
end
