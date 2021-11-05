class Usercampaing < ApplicationRecord
    belongs_to :user
    belongs_to :campaign
    belongs_to :vaccination

end
