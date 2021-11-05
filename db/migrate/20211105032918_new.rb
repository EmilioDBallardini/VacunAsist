class New < ActiveRecord::Migration[6.1]
      def change
        add_reference :usercampaings, :vaccination, null:false , foreign_key: true
        add_reference :usercampaings, :campaign, null:false, foreign_key: true
      end
end
