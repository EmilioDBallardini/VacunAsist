class AddEsperaToUser < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :espera, :integer
  end
end
