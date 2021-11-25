class Vaccination < ApplicationRecord
  has_many :turnos
  has_many :vacunas
  has_many :campaingfor_users
end
