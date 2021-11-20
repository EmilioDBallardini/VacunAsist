class AddUserIdToCampaingforUsers < ActiveRecord::Migration[6.1]
  def change
    add_column :campaingfor_users, :user_id, :integer
  end
end
