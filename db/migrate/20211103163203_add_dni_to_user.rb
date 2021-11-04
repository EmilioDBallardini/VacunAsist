class AddDniToUser < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :dni, :integer
  end
end
