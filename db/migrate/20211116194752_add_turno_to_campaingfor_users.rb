class AddTurnoToCampaingforUsers < ActiveRecord::Migration[6.1]
  def change
    add_reference :campaingfor_users, :turno, foreign_key: true
  end
end
