class CampaingforUser < ApplicationRecord
  belongs_to :campaingvaccine
  belongs_to :user
  belongs_to :vaccination
  belongs_to :turno
end
