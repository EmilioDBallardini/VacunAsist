class AddEnfermedadprevToUser < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :enfermedad, :boolean
  end
end
