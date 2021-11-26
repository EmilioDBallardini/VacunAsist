class Turno < ApplicationRecord
  belongs_to :vaccination
  has_many :campaingfor_users
end
