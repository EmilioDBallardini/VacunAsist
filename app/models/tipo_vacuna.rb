class TipoVacuna < ApplicationRecord
  has_many :vacunas, through: :vacunas
end
