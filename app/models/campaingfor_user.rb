class CampaingforUser < ApplicationRecord
  belongs_to :campaingvaccine
  belongs_to :user
end
