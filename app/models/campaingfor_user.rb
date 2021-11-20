class CampaingforUser < ApplicationRecord
  belongs_to :campaing 
  belongs_to :user
end
