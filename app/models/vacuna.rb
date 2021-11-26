class Vacuna < ApplicationRecord
  belongs_to :vaccination
  #has_many :campaingvaccines
  has_many :users, through: :campaingvaccines
  belongs_to :tipo_vacuna
end
