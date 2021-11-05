class AddUserIdUsercampaing < ActiveRecord::Migration[6.1]
  def change
    add_reference :usercampaings, :user, null:false, foreign_key: true
    add_reference :usercampaings, :vaccination, null:false , foreign_key: true
    add_reference :usercampaings, :campaing, null:false, foreign_key: true
  end
end
