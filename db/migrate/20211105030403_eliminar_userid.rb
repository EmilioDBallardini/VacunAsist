class EliminarUserid < ActiveRecord::Migration[6.1]
  def change
    remove_column :usercampaings, :user_id; :string
    
  end
end
