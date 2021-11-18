class Campaing < ApplicationRecord
  has_many :campaingfor_users
  belongs_to :vacunas
end
