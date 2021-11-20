class Vaccination < ApplicationRecord
  has_many :turnos
  has_many :vacunas
end
