class Vacuna < ApplicationRecord
  belongs_to :vaccination
  has_many :campaingvaccines
  belongs_to :tipo_vacuna
end
